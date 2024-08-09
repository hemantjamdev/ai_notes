import 'package:ai_notes/model/note_model.dart';
import 'package:ai_notes/repository/note_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_list_cubit.freezed.dart';
part 'note_list_state.dart';

class NoteListCubit extends Cubit<NoteListState> {
  NoteListCubit({required NoteRepository noteRepository})
      : _repository = noteRepository,
        super(const NoteListState());

  late final NoteRepository _repository;

  getAllNotes() async {
    if (state.isLoading) return;

    emit(state.copyWith(isLoading: true));
    try {
      final data = await _repository.getAll();
      List<NoteModel> noteList = [];

      if (data != null) {
        for (var element in data) {
          noteList.add(element);
        }
      }

      emit(state.copyWith(
        isLoading: false,
        notes: noteList,
      ));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  search(String value) async {
    try {
      final data = await _repository.getAll();
      List<NoteModel> noteList = List.from(state.notes);

      if (value.isNotEmpty && data != null) {
        List<NoteModel> filteredNotes = data
            .where((element) {
              return element.filter(value);
            })
            .toList()
            .where((e) => !e.isPrivate)
            .toList();

        emit(state.copyWith(
          isLoading: false,
          notes: filteredNotes,
        ));
      } else {
        noteList = await _repository.getAll() ?? [];
        emit(state.copyWith(
          isLoading: false,
          notes: noteList,
        ));
      }
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  // Future<List<NoteModel>?> getAllNoteList() async {
  //   return await _repository.getAll();
  // }

  indexChanged(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  deleteAllNotes() {
    _repository.deleteAll();
    emit(state.copyWith(notes: []));
  }

  onPinned(NoteModel noteModel) {
    List<NoteModel> list = List.from(state.notes);
    NoteModel? note =
        list.where((element) => element.id == noteModel.id).firstOrNull;
    if (note == null) return;
    note = note.copyWith(isPinned: !note.isPinned);
    _repository.update(note);
    getAllNotes();
  }

  onPrivate(NoteModel noteModel) {
    List<NoteModel> list = List.from(state.notes);
    NoteModel? note =
        list.where((element) => element.id == noteModel.id).firstOrNull;
    if (note == null) return;

    note = note.copyWith(isPrivate: !note.isPrivate);
    _repository.update(note);
    getAllNotes();
  }

  onDelete(NoteModel noteModel) {
    _repository.delete(noteModel.id);
    getAllNotes();
  }
}

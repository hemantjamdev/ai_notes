import 'package:ai_notes/local_storage/local_storage.dart';
import 'package:ai_notes/model/color_enum.dart';
import 'package:ai_notes/model/note_model.dart';
import 'package:ai_notes/repository/note_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_add_cubit.freezed.dart';
part 'note_add_state.dart';

class NoteAddCubit extends Cubit<NoteAddState> {
  NoteAddCubit({required NoteRepository noteRepository})
      : _repository = noteRepository,
        super(const NoteAddState(addNoteNavigate: false));
  late final NoteRepository _repository;

  onColorChanged(BackgroundColorEnum color) {
    emit(state.copyWith(selectedColor: color));
  }

  addNote() {
    if (state.title == null || state.description == null) return;
    try {
      final DateTime dateTime = DateTime.now();
      String id = uuid.v1();

      NoteModel note = NoteModel(
        id: id,
        title: state.title,
        description: state.description,
        date: dateTime,
        color: state.selectedColor.getColor(),
      );
      _repository.addNote(note);
      _repository.getAll();
      emit(state.copyWith(addNoteNavigate: true));
    } catch (e) {
      rethrow;
    }
  }

  onTitleChanged(String? title) {
    emit(state.copyWith(title: title));
  }

  onDescriptionChanged(String? description) {
    emit(state.copyWith(description: description));
  }
}

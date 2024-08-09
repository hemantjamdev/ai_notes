import 'package:ai_notes/model/note_model.dart';
import 'package:ai_notes/repository/note_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_edit_cubit.freezed.dart';
part 'note_edit_state.dart';

class NoteEditCubit extends Cubit<NoteEditState> {
  NoteEditCubit({
    required NoteModel noteModel,
    required NoteRepository noteRepository,
  })  : _noteRepository = noteRepository,
        super(NoteEditState(note: noteModel));
  final NoteRepository _noteRepository;

  update() => _noteRepository.update(state.note);

  onTitleChanged(String? title) {
    NoteModel note = state.note.copyWith(title: title);
    emit(state.copyWith(note: note));
  }

  onDescriptionChanged(String? description) {
    NoteModel note = state.note.copyWith(description: description);
    emit(state.copyWith(note: note));
  }

  onPinned(bool isPinned) {
    NoteModel note = state.note.copyWith(isPinned: isPinned);
    emit(state.copyWith(note: note));
  }

  onPrivate(bool isPrivate) {
    NoteModel note = state.note.copyWith(isPrivate: isPrivate);
    emit(state.copyWith(note: note));
  }
}

part of 'note_edit_cubit.dart';

@Freezed()
class NoteEditState with _$NoteEditState {
  const factory NoteEditState({
    required NoteModel note,
  }) = _NoteEditState;
}

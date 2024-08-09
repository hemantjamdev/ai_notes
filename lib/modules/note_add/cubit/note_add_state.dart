part of 'note_add_cubit.dart';

@Freezed()
class NoteAddState with _$NoteAddState {
  const factory NoteAddState({
    String? title,
    String? description,
    @Default(false) bool addNoteNavigate,
    @Default(BackgroundColorEnum.white) BackgroundColorEnum selectedColor,
  }) = _NoteAddState;
}

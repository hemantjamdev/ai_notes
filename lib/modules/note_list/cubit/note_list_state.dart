part of 'note_list_cubit.dart';

@Freezed()
class NoteListState with _$NoteListState {
  const factory NoteListState({
    @Default(false) bool isLoading,
    @Default([]) List<NoteModel> notes,
    String? errorMessage,
  }) = __$NoteListState;
}

extension NoteStateX on NoteListState {
  bool get pinned => notes.any((e) => e.isPinned);
}

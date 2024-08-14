part of 'note_list_cubit.dart';

@Freezed()
class NoteListState with _$NoteListState {
  const factory NoteListState({
    @Default(false) bool isLoading,
    @Default([]) List<NoteModel> notes,
    String? errorMessage,
    @Default(0) int currentIndex,
  }) = _NoteListState;
}

extension NoteStateX on List<NoteModel> {
  bool get pinned => any((e) => e.isPinned);

  List<NoteModel> get pinnedList =>
      where((element) => element.isPinned).toList();

  List<NoteModel> get otherList =>
      where((element) => !element.isPinned).toList();
}

part of 'gemini_chat_cubit.dart';

@Freezed()
sealed class GeminiChatState with _$GeminiChatState {
  const factory GeminiChatState({
    @Default(false) bool isLoading,
    @Default([]) List<ChatModel> chat,
    @Default('') String noteData,
  }) = _GeminiChatState;
}

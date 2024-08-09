// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GeminiChatState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ChatModel> get chat => throw _privateConstructorUsedError;
  String get noteData => throw _privateConstructorUsedError;

  /// Create a copy of GeminiChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeminiChatStateCopyWith<GeminiChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiChatStateCopyWith<$Res> {
  factory $GeminiChatStateCopyWith(
          GeminiChatState value, $Res Function(GeminiChatState) then) =
      _$GeminiChatStateCopyWithImpl<$Res, GeminiChatState>;
  @useResult
  $Res call({bool isLoading, List<ChatModel> chat, String noteData});
}

/// @nodoc
class _$GeminiChatStateCopyWithImpl<$Res, $Val extends GeminiChatState>
    implements $GeminiChatStateCopyWith<$Res> {
  _$GeminiChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeminiChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? chat = null,
    Object? noteData = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      noteData: null == noteData
          ? _value.noteData
          : noteData // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeminiChatStateImplCopyWith<$Res>
    implements $GeminiChatStateCopyWith<$Res> {
  factory _$$GeminiChatStateImplCopyWith(_$GeminiChatStateImpl value,
          $Res Function(_$GeminiChatStateImpl) then) =
      __$$GeminiChatStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ChatModel> chat, String noteData});
}

/// @nodoc
class __$$GeminiChatStateImplCopyWithImpl<$Res>
    extends _$GeminiChatStateCopyWithImpl<$Res, _$GeminiChatStateImpl>
    implements _$$GeminiChatStateImplCopyWith<$Res> {
  __$$GeminiChatStateImplCopyWithImpl(
      _$GeminiChatStateImpl _value, $Res Function(_$GeminiChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeminiChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? chat = null,
    Object? noteData = null,
  }) {
    return _then(_$GeminiChatStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      chat: null == chat
          ? _value._chat
          : chat // ignore: cast_nullable_to_non_nullable
              as List<ChatModel>,
      noteData: null == noteData
          ? _value.noteData
          : noteData // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GeminiChatStateImpl implements _GeminiChatState {
  const _$GeminiChatStateImpl(
      {this.isLoading = false,
      final List<ChatModel> chat = const [],
      this.noteData = ''})
      : _chat = chat;

  @override
  @JsonKey()
  final bool isLoading;
  final List<ChatModel> _chat;
  @override
  @JsonKey()
  List<ChatModel> get chat {
    if (_chat is EqualUnmodifiableListView) return _chat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chat);
  }

  @override
  @JsonKey()
  final String noteData;

  @override
  String toString() {
    return 'GeminiChatState(isLoading: $isLoading, chat: $chat, noteData: $noteData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiChatStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._chat, _chat) &&
            (identical(other.noteData, noteData) ||
                other.noteData == noteData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_chat), noteData);

  /// Create a copy of GeminiChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiChatStateImplCopyWith<_$GeminiChatStateImpl> get copyWith =>
      __$$GeminiChatStateImplCopyWithImpl<_$GeminiChatStateImpl>(
          this, _$identity);
}

abstract class _GeminiChatState implements GeminiChatState {
  const factory _GeminiChatState(
      {final bool isLoading,
      final List<ChatModel> chat,
      final String noteData}) = _$GeminiChatStateImpl;

  @override
  bool get isLoading;
  @override
  List<ChatModel> get chat;
  @override
  String get noteData;

  /// Create a copy of GeminiChatState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeminiChatStateImplCopyWith<_$GeminiChatStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

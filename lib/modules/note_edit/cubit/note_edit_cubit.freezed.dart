// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_edit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteEditState {
  NoteModel get note => throw _privateConstructorUsedError;

  /// Create a copy of NoteEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteEditStateCopyWith<NoteEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEditStateCopyWith<$Res> {
  factory $NoteEditStateCopyWith(
          NoteEditState value, $Res Function(NoteEditState) then) =
      _$NoteEditStateCopyWithImpl<$Res, NoteEditState>;
  @useResult
  $Res call({NoteModel note});

  $NoteModelCopyWith<$Res> get note;
}

/// @nodoc
class _$NoteEditStateCopyWithImpl<$Res, $Val extends NoteEditState>
    implements $NoteEditStateCopyWith<$Res> {
  _$NoteEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteModel,
    ) as $Val);
  }

  /// Create a copy of NoteEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteModelCopyWith<$Res> get note {
    return $NoteModelCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteEditStateImplCopyWith<$Res>
    implements $NoteEditStateCopyWith<$Res> {
  factory _$$NoteEditStateImplCopyWith(
          _$NoteEditStateImpl value, $Res Function(_$NoteEditStateImpl) then) =
      __$$NoteEditStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoteModel note});

  @override
  $NoteModelCopyWith<$Res> get note;
}

/// @nodoc
class __$$NoteEditStateImplCopyWithImpl<$Res>
    extends _$NoteEditStateCopyWithImpl<$Res, _$NoteEditStateImpl>
    implements _$$NoteEditStateImplCopyWith<$Res> {
  __$$NoteEditStateImplCopyWithImpl(
      _$NoteEditStateImpl _value, $Res Function(_$NoteEditStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteEditState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$NoteEditStateImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteModel,
    ));
  }
}

/// @nodoc

class _$NoteEditStateImpl implements _NoteEditState {
  const _$NoteEditStateImpl({required this.note});

  @override
  final NoteModel note;

  @override
  String toString() {
    return 'NoteEditState(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteEditStateImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  /// Create a copy of NoteEditState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteEditStateImplCopyWith<_$NoteEditStateImpl> get copyWith =>
      __$$NoteEditStateImplCopyWithImpl<_$NoteEditStateImpl>(this, _$identity);
}

abstract class _NoteEditState implements NoteEditState {
  const factory _NoteEditState({required final NoteModel note}) =
      _$NoteEditStateImpl;

  @override
  NoteModel get note;

  /// Create a copy of NoteEditState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteEditStateImplCopyWith<_$NoteEditStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_add_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteAddState {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool get addNoteNavigate => throw _privateConstructorUsedError;
  BackgroundColorEnum get selectedColor => throw _privateConstructorUsedError;

  /// Create a copy of NoteAddState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteAddStateCopyWith<NoteAddState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteAddStateCopyWith<$Res> {
  factory $NoteAddStateCopyWith(
          NoteAddState value, $Res Function(NoteAddState) then) =
      _$NoteAddStateCopyWithImpl<$Res, NoteAddState>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      bool addNoteNavigate,
      BackgroundColorEnum selectedColor});
}

/// @nodoc
class _$NoteAddStateCopyWithImpl<$Res, $Val extends NoteAddState>
    implements $NoteAddStateCopyWith<$Res> {
  _$NoteAddStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteAddState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? addNoteNavigate = null,
    Object? selectedColor = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addNoteNavigate: null == addNoteNavigate
          ? _value.addNoteNavigate
          : addNoteNavigate // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedColor: null == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as BackgroundColorEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteAddStateImplCopyWith<$Res>
    implements $NoteAddStateCopyWith<$Res> {
  factory _$$NoteAddStateImplCopyWith(
          _$NoteAddStateImpl value, $Res Function(_$NoteAddStateImpl) then) =
      __$$NoteAddStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      bool addNoteNavigate,
      BackgroundColorEnum selectedColor});
}

/// @nodoc
class __$$NoteAddStateImplCopyWithImpl<$Res>
    extends _$NoteAddStateCopyWithImpl<$Res, _$NoteAddStateImpl>
    implements _$$NoteAddStateImplCopyWith<$Res> {
  __$$NoteAddStateImplCopyWithImpl(
      _$NoteAddStateImpl _value, $Res Function(_$NoteAddStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteAddState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? addNoteNavigate = null,
    Object? selectedColor = null,
  }) {
    return _then(_$NoteAddStateImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      addNoteNavigate: null == addNoteNavigate
          ? _value.addNoteNavigate
          : addNoteNavigate // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedColor: null == selectedColor
          ? _value.selectedColor
          : selectedColor // ignore: cast_nullable_to_non_nullable
              as BackgroundColorEnum,
    ));
  }
}

/// @nodoc

class _$NoteAddStateImpl implements _NoteAddState {
  const _$NoteAddStateImpl(
      {this.title,
      this.description,
      this.addNoteNavigate = false,
      this.selectedColor = BackgroundColorEnum.white});

  @override
  final String? title;
  @override
  final String? description;
  @override
  @JsonKey()
  final bool addNoteNavigate;
  @override
  @JsonKey()
  final BackgroundColorEnum selectedColor;

  @override
  String toString() {
    return 'NoteAddState(title: $title, description: $description, addNoteNavigate: $addNoteNavigate, selectedColor: $selectedColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteAddStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.addNoteNavigate, addNoteNavigate) ||
                other.addNoteNavigate == addNoteNavigate) &&
            (identical(other.selectedColor, selectedColor) ||
                other.selectedColor == selectedColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, description, addNoteNavigate, selectedColor);

  /// Create a copy of NoteAddState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteAddStateImplCopyWith<_$NoteAddStateImpl> get copyWith =>
      __$$NoteAddStateImplCopyWithImpl<_$NoteAddStateImpl>(this, _$identity);
}

abstract class _NoteAddState implements NoteAddState {
  const factory _NoteAddState(
      {final String? title,
      final String? description,
      final bool addNoteNavigate,
      final BackgroundColorEnum selectedColor}) = _$NoteAddStateImpl;

  @override
  String? get title;
  @override
  String? get description;
  @override
  bool get addNoteNavigate;
  @override
  BackgroundColorEnum get selectedColor;

  /// Create a copy of NoteAddState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteAddStateImplCopyWith<_$NoteAddStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

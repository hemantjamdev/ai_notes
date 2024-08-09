// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) {
  return _NoteModel.fromJson(json);
}

/// @nodoc
mixin _$NoteModel {
  @HiveField(0)
  @JsonValue("id")
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonValue("title")
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonValue("description")
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonValue("date")
  DateTime get date => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonValue("isCompeted")
  bool get isCompeted => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonValue("isPinned")
  bool get isPinned => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonValue("color")
  int get color => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonValue("isPrivate")
  bool get isPrivate => throw _privateConstructorUsedError;

  /// Serializes this NoteModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteModelCopyWith<NoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteModelCopyWith<$Res> {
  factory $NoteModelCopyWith(NoteModel value, $Res Function(NoteModel) then) =
      _$NoteModelCopyWithImpl<$Res, NoteModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonValue("id") String id,
      @HiveField(1) @JsonValue("title") String? title,
      @HiveField(2) @JsonValue("description") String? description,
      @HiveField(3) @JsonValue("date") DateTime date,
      @HiveField(4) @JsonValue("isCompeted") bool isCompeted,
      @HiveField(5) @JsonValue("isPinned") bool isPinned,
      @HiveField(6) @JsonValue("color") int color,
      @HiveField(7) @JsonValue("isPrivate") bool isPrivate});
}

/// @nodoc
class _$NoteModelCopyWithImpl<$Res, $Val extends NoteModel>
    implements $NoteModelCopyWith<$Res> {
  _$NoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? date = null,
    Object? isCompeted = null,
    Object? isPinned = null,
    Object? color = null,
    Object? isPrivate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompeted: null == isCompeted
          ? _value.isCompeted
          : isCompeted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteModelImplCopyWith<$Res>
    implements $NoteModelCopyWith<$Res> {
  factory _$$NoteModelImplCopyWith(
          _$NoteModelImpl value, $Res Function(_$NoteModelImpl) then) =
      __$$NoteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonValue("id") String id,
      @HiveField(1) @JsonValue("title") String? title,
      @HiveField(2) @JsonValue("description") String? description,
      @HiveField(3) @JsonValue("date") DateTime date,
      @HiveField(4) @JsonValue("isCompeted") bool isCompeted,
      @HiveField(5) @JsonValue("isPinned") bool isPinned,
      @HiveField(6) @JsonValue("color") int color,
      @HiveField(7) @JsonValue("isPrivate") bool isPrivate});
}

/// @nodoc
class __$$NoteModelImplCopyWithImpl<$Res>
    extends _$NoteModelCopyWithImpl<$Res, _$NoteModelImpl>
    implements _$$NoteModelImplCopyWith<$Res> {
  __$$NoteModelImplCopyWithImpl(
      _$NoteModelImpl _value, $Res Function(_$NoteModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? date = null,
    Object? isCompeted = null,
    Object? isPinned = null,
    Object? color = null,
    Object? isPrivate = null,
  }) {
    return _then(_$NoteModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isCompeted: null == isCompeted
          ? _value.isCompeted
          : isCompeted // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinned: null == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as bool,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteModelImpl implements _NoteModel {
  const _$NoteModelImpl(
      {@HiveField(0) @JsonValue("id") required this.id,
      @HiveField(1) @JsonValue("title") this.title,
      @HiveField(2) @JsonValue("description") this.description,
      @HiveField(3) @JsonValue("date") required this.date,
      @HiveField(4) @JsonValue("isCompeted") this.isCompeted = false,
      @HiveField(5) @JsonValue("isPinned") this.isPinned = false,
      @HiveField(6) @JsonValue("color") this.color = 0xFFFFFFFF,
      @HiveField(7) @JsonValue("isPrivate") this.isPrivate = false});

  factory _$NoteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonValue("id")
  final String id;
  @override
  @HiveField(1)
  @JsonValue("title")
  final String? title;
  @override
  @HiveField(2)
  @JsonValue("description")
  final String? description;
  @override
  @HiveField(3)
  @JsonValue("date")
  final DateTime date;
  @override
  @JsonKey()
  @HiveField(4)
  @JsonValue("isCompeted")
  final bool isCompeted;
  @override
  @JsonKey()
  @HiveField(5)
  @JsonValue("isPinned")
  final bool isPinned;
  @override
  @JsonKey()
  @HiveField(6)
  @JsonValue("color")
  final int color;
  @override
  @JsonKey()
  @HiveField(7)
  @JsonValue("isPrivate")
  final bool isPrivate;

  @override
  String toString() {
    return 'NoteModel(id: $id, title: $title, description: $description, date: $date, isCompeted: $isCompeted, isPinned: $isPinned, color: $color, isPrivate: $isPrivate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.isCompeted, isCompeted) ||
                other.isCompeted == isCompeted) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description, date,
      isCompeted, isPinned, color, isPrivate);

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      __$$NoteModelImplCopyWithImpl<_$NoteModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteModelImplToJson(
      this,
    );
  }
}

abstract class _NoteModel implements NoteModel {
  const factory _NoteModel(
          {@HiveField(0) @JsonValue("id") required final String id,
          @HiveField(1) @JsonValue("title") final String? title,
          @HiveField(2) @JsonValue("description") final String? description,
          @HiveField(3) @JsonValue("date") required final DateTime date,
          @HiveField(4) @JsonValue("isCompeted") final bool isCompeted,
          @HiveField(5) @JsonValue("isPinned") final bool isPinned,
          @HiveField(6) @JsonValue("color") final int color,
          @HiveField(7) @JsonValue("isPrivate") final bool isPrivate}) =
      _$NoteModelImpl;

  factory _NoteModel.fromJson(Map<String, dynamic> json) =
      _$NoteModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonValue("id")
  String get id;
  @override
  @HiveField(1)
  @JsonValue("title")
  String? get title;
  @override
  @HiveField(2)
  @JsonValue("description")
  String? get description;
  @override
  @HiveField(3)
  @JsonValue("date")
  DateTime get date;
  @override
  @HiveField(4)
  @JsonValue("isCompeted")
  bool get isCompeted;
  @override
  @HiveField(5)
  @JsonValue("isPinned")
  bool get isPinned;
  @override
  @HiveField(6)
  @JsonValue("color")
  int get color;
  @override
  @HiveField(7)
  @JsonValue("isPrivate")
  bool get isPrivate;

  /// Create a copy of NoteModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteModelImplCopyWith<_$NoteModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

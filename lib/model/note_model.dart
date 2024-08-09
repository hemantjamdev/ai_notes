import 'package:ai_notes/utils/date_formate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    @HiveField(0) @JsonValue("id") required String id,
    @HiveField(1) @JsonValue("title") String? title,
    @HiveField(2) @JsonValue("description") String? description,
    @HiveField(3) @JsonValue("date") required DateTime date,
    @HiveField(4) @Default(false) @JsonValue("isCompeted") bool isCompeted,
    @HiveField(5) @Default(false) @JsonValue("isPinned") bool isPinned,
    @HiveField(6) @Default(0xFFFFFFFF) @JsonValue("color") int color,
    @HiveField(7) @Default(false) @JsonValue("isPrivate") bool isPrivate,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) =>
      _$NoteModelFromJson(json);
}

extension NoteModelX on NoteModel {
  bool filter(String value) {
    return (title!.toLowerCase().contains(value) ||
        description!.toLowerCase().contains(value) ||
        date.formattedDate().toLowerCase().contains(value));
  }
}

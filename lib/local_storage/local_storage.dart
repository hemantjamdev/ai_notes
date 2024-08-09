import 'package:ai_notes/constants/strings.dart';
import 'package:ai_notes/model/note_model.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

Uuid uuid = const Uuid();

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();

  factory DBHelper() {
    return _instance;
  }

  DBHelper._internal();

  saveTitle(String titleName) async {
    final hive = await Hive.openBox<String>(Strings.titleDatabaseName);
    hive.put(Strings.titleDatabaseKey, titleName);
  }

  restoreBackup(NoteModel noteModel) async {
    final hive = await Hive.openBox<NoteModel>(Strings.databaseName);
    hive.put(noteModel.id, noteModel);
  }

  void addNote({required NoteModel note}) async {
    final hive = await Hive.openBox<NoteModel>(Strings.databaseName);
    hive.put(note.id, note);
  }

  void update({required NoteModel note}) async {
    final hive = await Hive.openBox<NoteModel>(Strings.databaseName);
    hive.put(note.id, note);
  }

  void delete({required String id}) async {
    final hive = await Hive.openBox<NoteModel>(Strings.databaseName);
    hive.delete(id);
  }

  void deleteAll() async {
    final hive = await Hive.openBox<NoteModel>(Strings.databaseName);
    hive.clear();
  }

  Future<List<NoteModel>?> getAll() async {
    List<NoteModel> notes = <NoteModel>[];
    final hive = await Hive.openBox<NoteModel>(Strings.databaseName);
    notes = hive.values.toList();
    return notes;
  }

  Future<NoteModel?> getNoteById(String id) async {
    final hive = await Hive.openBox<NoteModel>(Strings.databaseName);
    return (hive.get(id));
  }
}

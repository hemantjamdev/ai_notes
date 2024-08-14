import 'dart:io';

import 'package:ai_notes/constants/strings.dart';
import 'package:ai_notes/model/note_model.dart';
import 'package:ai_notes/note_app.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory dir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(Strings.databaseName);
  runApp(const NoteApp());
}

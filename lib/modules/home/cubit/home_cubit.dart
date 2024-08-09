import 'dart:developer';

import 'package:ai_notes/model/note_model.dart';
import 'package:ai_notes/repository/note_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required NoteRepository noteRepository})
      : _noteRepository = noteRepository,
        super(const HomeState());
  final NoteRepository _noteRepository;

  indexChanged(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  Future<String> getAllData() async {
    List<String> list = [];
    List<NoteModel>? notes = await _noteRepository.getAll();
    notes?.forEach((e) {
      log(e.toString());
      list.add(e.toString());
    });
    log("=====>${list.toString()}");
    return list.toString();
  }

  deleteAll() {
    _noteRepository.deleteAll();
    _noteRepository.getAll();
  }
}

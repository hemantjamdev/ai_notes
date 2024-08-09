import 'package:ai_notes/model/note_model.dart';
import 'package:ai_notes/modules/note_edit/note_edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension on BuildContext {
  NoteEditCubit get cubit => read();
}

class NoteEditPage extends StatelessWidget {
  NoteEditPage({super.key});

  static Route route({required NoteModel noteModel}) {
    return MaterialPageRoute(
      builder: (context) => BlocProvider(
        create: (context) => NoteEditCubit(
          noteModel: noteModel,
          noteRepository: context.read(),
        ),
        child: NoteEditPage(),
      ),
    );
  }

  final FocusNode _discFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteEditCubit, NoteEditState>(
      buildWhen: (current, previous) {
        return current.note != previous.note;
      },
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            heroTag: "fabhero",
            onPressed: () {
              _discFocus.unfocus();
              context.cubit.update();
            },
            child: const Icon(Icons.done),
          ),
          appBar: AppBar(
            title: const Text("Edit note"),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () {
                        context.cubit.onPrivate(!state.note.isPrivate);
                      },
                      icon: Icon(
                        state.note.isPrivate ? Icons.lock : Icons.lock_open,
                      )),
                  IconButton(
                      onPressed: () {
                        context.cubit.onPinned(!state.note.isPinned);
                      },
                      icon: Icon(
                        state.note.isPinned
                            ? Icons.push_pin
                            : Icons.push_pin_outlined,
                      )),
                ],
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  initialValue: state.note.title,
                  focusNode: _discFocus,
                  onSaved: (String? text) {
                    FocusScope.of(context).requestFocus(_discFocus);
                  },
                  decoration: const InputDecoration(
                    hintText: "Title",
                    hintStyle: TextStyle(fontSize: 32),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    initialValue: state.note.description,
                    autofocus: true,
                    maxLines: null,
                    textInputAction: TextInputAction.newline,
                    decoration: const InputDecoration(hintText: "Description"),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

import 'package:ai_notes/model/color_enum.dart';
import 'package:ai_notes/modules/note_add/note_add.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension on BuildContext {
  NoteAddCubit get cubit => read();
}

class NoteAddPage extends StatefulWidget {
  const NoteAddPage._();

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (BuildContext context) {
        return BlocProvider<NoteAddCubit>(
          create: (context) => NoteAddCubit(noteRepository: context.read()),
          child: const NoteAddPage._(),
        );
      },
    );
  }

  @override
  State<NoteAddPage> createState() => _NoteAddPageState();
}

class _NoteAddPageState extends State<NoteAddPage> {
  final FocusNode _discFocus = FocusNode();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteAddCubit, NoteAddState>(
      listenWhen: (current, previous) {
        return current.addNoteNavigate != previous.addNoteNavigate;
      },
      listener: (BuildContext context, NoteAddState state) {
        if (state.addNoteNavigate) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        //backgroundColor: state.selectedColor.getColor(),
        // floatingActionButton: FloatingActionButton(
        //   heroTag: Strings.fabHero,
        //   onPressed: () {},
        //   child: AppIcons.done,
        // ),
        appBar: AppBar(
          title: const Text("Add Note"),
          actions: [
            IconButton(
                onPressed: () {
                  FocusNode().unfocus();
                  context.cubit.addNote();
                },
                icon: const Icon(Icons.done))
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  key: const Key("title"),
                  autofocus: true,
                  onSubmitted: (String text) {
                    FocusScope.of(context).requestFocus(_discFocus);
                  },
                  decoration: const InputDecoration(
                    hintText: "Title",
                    hintStyle: TextStyle(fontSize: 32),
                    border: InputBorder.none,
                  ),
                  onChanged: context.cubit.onTitleChanged,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    key: const Key("description"),
                    focusNode: _discFocus,
                    maxLines: null,
                    textInputAction: TextInputAction.newline,
                    decoration: const InputDecoration(
                      hintText: "Description",
                      border: InputBorder.none,
                    ),
                    onChanged: context.cubit.onDescriptionChanged,
                  ),
                ),
              ),
              const _ColorPicker()
            ],
          ),
        ),
      ),
    );
  }
}

class _ColorPicker extends StatelessWidget {
  const _ColorPicker();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteAddCubit, NoteAddState>(
      buildWhen: (previous, current) {
        return previous.selectedColor != current.selectedColor;
      },
      builder: (context, state) {
        return Container(
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: BackgroundColorEnum.values
                  .map(
                    (e) => GestureDetector(
                      onTap: () {
                        context.cubit.onColorChanged(e);
                      },
                      child: Card(
                        elevation: 20,
                        color: Color(e.getColor()),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Visibility(
                            visible: e == state.selectedColor,
                            child: const Visibility(child: Icon(Icons.done)),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}

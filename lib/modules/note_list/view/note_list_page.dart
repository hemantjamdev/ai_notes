import 'package:ai_notes/model/note_model.dart';
import 'package:ai_notes/model/note_option_enum.dart';
import 'package:ai_notes/modules/gemini_chat/view/gemini_chat_page.dart';
import 'package:ai_notes/modules/note_add/view/note_add_page.dart';
import 'package:ai_notes/modules/note_edit/note_edit.dart';
import 'package:ai_notes/modules/note_list/note_list.dart';
import 'package:ai_notes/utils/navigation.dart';
import 'package:ai_notes/widgets/widget.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

extension on BuildContext {
  NoteListCubit get cubit => read();
}

class NoteListPage extends StatelessWidget {
  NoteListPage._();

  static Widget instance() {
    return BlocProvider(
      create: (context) =>
          NoteListCubit(noteRepository: context.read())..getAllNotes(),
      child: NoteListPage._(),
    );
  }

  final iconList = <IconData>[Icons.delete, Icons.chat];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: _BodyView(),
      ),
      bottomNavigationBar: BlocBuilder<NoteListCubit, NoteListState>(
        buildWhen: (current, previous) =>
            current.currentIndex != previous.currentIndex,
        builder: (context, state) {
          return AnimatedBottomNavigationBar(
            icons: iconList,
            activeIndex: state.currentIndex,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            leftCornerRadius: 10,
            rightCornerRadius: 10,
            onTap: (int index) async {
              if (index == 0) {
                final bool? value = await showDialog(
                  useSafeArea: true,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text(
                        "Sure you want to delete all notes ?",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                          child: const Text("Delete"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                          child: const Text("Cancel"),
                        ),
                      ],
                    );
                  },
                );
                if (value != null && value && context.mounted) {
                  context.cubit.deleteAllNotes();
                }
              } else if (index == 1) {
                List<NoteModel>? data = state.notes;
                if (data.isNotEmpty && context.mounted) {
                  context
                      .navigateTo(GeminiChatPage.route(data: data.toString()));
                } else {
                  if (context.mounted) {
                    context.showToast(msg: "Please add some note to chat");
                  }
                }
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: "fabhero",
        onPressed: () async {
          await context.navigateTo(NoteAddPage.route());
          if (context.mounted) {
            context.cubit.getAllNotes();
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _BodyView extends StatelessWidget {
  const _BodyView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          _SearchView(),
          const SizedBox(height: 20),
          const _ProfileView(),
          const SizedBox(height: 20),
          const _NoteListView(),
        ],
      ),
    );
  }
}

class _NoteListView extends StatelessWidget {
  const _NoteListView();

  handleOnTap(
    NoteModel noteModel,
    BuildContext context,
    NoteOptionsEnum type,
  ) {
    switch (type) {
      case NoteOptionsEnum.pin:
        context.cubit.onPinned(noteModel);
      case NoteOptionsEnum.delete:
        context.cubit.onDelete(noteModel);
      case NoteOptionsEnum.private:
        context.cubit.onPrivate(noteModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteListCubit, NoteListState>(
      buildWhen: (current, previous) => current.notes != previous.notes,
      builder: (context, state) {
        return Expanded(
          child: RefreshIndicator(
            onRefresh: () async {
              context.cubit.getAllNotes();
            },
            child: state.notes.isEmpty
                ? const Center(child: Text("Your notes will be here"))
                : SingleChildScrollView(
                    physics: const ScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        state.notes.pinned
                            ? const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text("Pinned"),
                              )
                            : const SizedBox(),
                        StaggeredGrid.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: state.notes.pinnedList.map((e) {
                            return NoteCard(
                              note: e,
                              onTap: () {
                                context.navigateTo(
                                    NoteEditPage.route(noteModel: e));
                              },
                              onLongTap: (type) =>
                                  handleOnTap(e, context, type),
                            );
                          }).toList(),
                        ),
                        state.notes.pinned
                            ? const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text("Other"),
                              )
                            : const SizedBox(),
                        StaggeredGrid.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: state.notes.otherList.map((e) {
                            return NoteCard(
                              note: e,
                              onTap: () {
                                context.navigateTo(
                                    NoteEditPage.route(noteModel: e));
                              },
                              onLongTap: (type) =>
                                  handleOnTap(e, context, type),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
          ),
        );
      },
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Reminders",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        CircleAvatar(child: Icon(Icons.person))
      ],
    );
  }
}

class _SearchView extends StatelessWidget {
  _SearchView();

  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        hintText: "Search",
        prefixIcon: const Icon(Icons.search),
        contentPadding: EdgeInsets.zero,
      ),
      onChanged: (String value) {
        context.cubit.search(value);
        if (value.isEmpty) {
          focusNode.unfocus();
        }
      },
    );
  }
}

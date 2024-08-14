import 'dart:ui';

import 'package:ai_notes/model/note_model.dart';
import 'package:ai_notes/model/note_option_enum.dart';
import 'package:ai_notes/utils/date_formate.dart';
import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key,
    required this.note,
    required this.onTap,
    required this.onLongTap,
  });

  final NoteModel note;
  final VoidCallback onTap;
  final Function(NoteOptionsEnum) onLongTap;

  handleLongPress({
    required BuildContext context,
    required Function(NoteOptionsEnum) onLongTap,
  }) {
    showModalBottomSheet(
        constraints: BoxConstraints(minWidth: double.infinity),
        context: context,
        builder: (_) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...NoteOptionsEnum.values.map((e) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    e.getTitle(e),
                    style: TextStyle(
                      color: e.isDelete ? Colors.red : null,
                    ),
                  ),
                );
              }),
              Text("Cancel")
            ],
          );
        });
    // showDialog(
    //     context: context,
    //     builder: (_) {
    //       return AlertDialog(
    //         content: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             TextButton(
    //               onPressed: () {
    //                 context.pop();
    //                 onLongTap(NoteOptionsEnum.delete);
    //               },
    //               child: const Text("Delete"),
    //             ),
    //             TextButton(
    //               onPressed: () {
    //                 context.pop();
    //                 onLongTap(NoteOptionsEnum.private);
    //               },
    //               child: const Text("Private"),
    //             ),
    //             TextButton(
    //               onPressed: () {
    //                 context.pop();
    //                 onLongTap(NoteOptionsEnum.pinned);
    //               },
    //               child: const Text("Pinned"),
    //             ),
    //           ],
    //         ),
    //       );
    //     });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: () =>
          handleLongPress(context: context, onLongTap: onLongTap),
      child: IntrinsicHeight(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Color(note.color),
              borderRadius: BorderRadius.circular(10)),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (note.isPinned)
                    const Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.push_pin, size: 18),
                    ),
                  Text(
                    note.title ?? "",
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    note.description ?? "",
                    style: const TextStyle(fontSize: 14),
                    maxLines: 20,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(4)),
                      border: Border.all(color: Colors.black),
                    ),
                    padding: const EdgeInsets.all(2),
                    child: Text(
                      note.date.formattedDate(),
                      style: const TextStyle(fontSize: 10),
                    ),
                  ),
                ],
              ),
              if (note.isPrivate)
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 8.0,
                      sigmaY: 8.0,
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.lock,
                        color: Colors.grey,
                        size: 42,
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

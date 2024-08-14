enum NoteOptionsEnum {
  view,
  edit,
  private,
  pinned,
  copy,
  send,
  sendImage,
  delete,
}

extension NoteOptionsEnumExtension on NoteOptionsEnum {
  bool get isPrivate => this == NoteOptionsEnum.private;

  bool get isPinned => this == NoteOptionsEnum.pinned;

  bool get isDelete => this == NoteOptionsEnum.delete;

  String getTitle(NoteOptionsEnum type) {
    switch (type) {
      case NoteOptionsEnum.view:
        return "View";
      case NoteOptionsEnum.edit:
        return "Edit";
      case NoteOptionsEnum.private:
        return type.isPrivate ? "Unlock" : "Lock";
      case NoteOptionsEnum.pinned:
        return type.isPinned ? "Unpin" : "Pin";
      case NoteOptionsEnum.copy:
        return "Make Copy";

      case NoteOptionsEnum.send:
        return "Send";
      case NoteOptionsEnum.sendImage:
        return "Send as image";
      case NoteOptionsEnum.delete:
        return "Delete";
    }
  }
}

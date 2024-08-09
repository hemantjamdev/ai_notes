import 'package:intl/intl.dart';

String _getOrdinalSuffix(int day) {
  if (day >= 11 && day <= 13) {
    return "th";
  }
  switch (day % 10) {
    case 1:
      return "st";
    case 2:
      return "nd";
    case 3:
      return "rd";
    default:
      return "th";
  }
}

extension DateFormateX on DateTime {
  String formattedDate() {
    String formattedDate =
        DateFormat("dd'${_getOrdinalSuffix(day)}' MMM yy  hh:mm").format(this);
    return formattedDate;
  }
}

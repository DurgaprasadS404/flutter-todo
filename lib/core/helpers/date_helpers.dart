import 'package:intl/intl.dart';

class DateHelpers {
  static String formatDisplayDate(DateTime startDateTime) {
    String displayDate =
        "${DateFormat(DateFormat.ABBR_WEEKDAY).format(startDateTime)}, "
        "${DateFormat(DateFormat.ABBR_MONTH_DAY).format(startDateTime)}";
    return displayDate;
  }

  static String formatDisplayTime(DateTime startDateTime, int durationInMS) {
    Duration duration = Duration(milliseconds: durationInMS);
    String displayTime =
        '${DateFormat(DateFormat.HOUR24_MINUTE).format(startDateTime)}-'
        '${DateFormat(DateFormat.HOUR24_MINUTE).format(startDateTime.add(duration))}';
    return displayTime;
  }
}

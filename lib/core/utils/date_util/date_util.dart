// ignore_for_file: lines_longer_than_80_chars

class DateUtil {
  String dateToIDayIMonthIYear({required final DateTime? date}) {
    if (date != null) {
      return "${date.day.toString().padLeft(2, '0')}.${date.month.toString().padLeft(2, '0')}.${date.year}";
    } else {
      return '';
    }
  }
}

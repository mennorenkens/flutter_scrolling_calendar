/// Checks if the given date is today.
bool dateIsToday(DateTime date) {
  final DateTime now = DateTime.now();
  return date.isAtSameMomentAs(DateTime(now.year, now.month, now.day));
}

/// Checks if the date is in array.
bool dateIsInArray(DateTime date, List<DateTime> dates) {
  for(var i=0;i<dates.length;i++){
    if (dates[i].day == date.day && dates[i].month == date.month && dates[i].year == date.year) {
      return true;
    }
  }
  return false;
}

/// Gets the number of days for the given month,
/// by taking the next month on day 0 and getting the number of days.
int getDaysInMonth(int year, int month) {
  return month < DateTime.monthsPerYear
      ? DateTime(year, month + 1, 0).day
      : DateTime(year + 1, 1, 0).day;
}

/// Gets the name of the given month by its number,
/// using either the supplied or default name.
String getMonthName(int month, {List<String> monthNames}) {
  final List<String> names = monthNames ??
      <String>[
        'Jan',
        'Feb',
        'Mar',
        'Apr',
        'May',
        'Jun',
        'Jul',
        'Aug',
        'Sep',
        'Oct',
        'Nov',
        'Dec',
      ];
  return names[month - 1];
}

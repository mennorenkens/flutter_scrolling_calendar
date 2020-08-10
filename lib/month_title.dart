import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/utils/dates.dart';

class MonthTitle extends StatelessWidget {
  const MonthTitle({
    @required this.month,
    this.monthNames,
    this.monthTitleStyle = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  });

  final int month;
  final List<String> monthNames;
  final TextStyle monthTitleStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        getMonthName(month, monthNames: monthNames),
        style: monthTitleStyle,
        maxLines: 1,
        overflow: TextOverflow.fade,
        softWrap: false,
      ),
    );
  }
}

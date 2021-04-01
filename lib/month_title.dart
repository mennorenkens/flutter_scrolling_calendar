import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/utils/dates.dart';

class MonthTitle extends StatelessWidget {
  const MonthTitle({
    required this.month,
    this.monthNames,
    this.style = const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  });

  final int month;
  final List<String>? monthNames;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        getMonthName(month, monthNames: monthNames),
        style: style,
        maxLines: 1,
        overflow: TextOverflow.fade,
        softWrap: false,
      ),
    );
  }
}

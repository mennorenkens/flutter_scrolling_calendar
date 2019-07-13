import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/utils/screen_sizes.dart';

class DayNumber extends StatelessWidget {
  const DayNumber({
    @required this.day,
    this.isCurrentDate,
    this.currentDateColor = Colors.blue,
  });

  final int day;
  final bool isCurrentDate;
  final Color currentDateColor;

  @override
  Widget build(BuildContext context) {
    final double size = getDayNumberSize(context);

    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: isCurrentDate
          ? BoxDecoration(
              color: currentDateColor,
              borderRadius: BorderRadius.circular(size / 2),
            )
          : null,
      child: Text(
        day < 1 ? '' : day.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isCurrentDate ? Colors.white : Colors.black87,
          fontSize: screenSize(context) == ScreenSizes.small ? 8.0 : 10.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

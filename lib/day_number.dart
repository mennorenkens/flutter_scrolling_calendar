import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/utils/screen_sizes.dart';

class DayNumber extends StatelessWidget {
  const DayNumber({
    @required this.day,
    this.isToday,
    this.todayColor = Colors.blue,
    this.isInSelectedDates,
    this.selectedDatesColor = Colors.red,
  });

  final int day;
  final bool isToday;
  final Color todayColor;
  final bool isInSelectedDates;
  final Color selectedDatesColor;

  @override
  Widget build(BuildContext context) {
    final double size = getDayNumberSize(context);

    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: _getDecoration(size),
      child: Text(
        day < 1 ? '' : day.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isToday ? Colors.white : Colors.black87,
          fontSize: screenSize(context) == ScreenSizes.small ? 8.0 : 10.0,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Decoration _getDecoration(double size){
    if(isToday){
      return BoxDecoration(
        color: todayColor,
        borderRadius: BorderRadius.circular(size / 2),
      );
    };
    if(isInSelectedDates){
      return BoxDecoration(
        color: selectedDatesColor,
        borderRadius: BorderRadius.circular(size / 2),
      );
    }
    return null;
  }
}

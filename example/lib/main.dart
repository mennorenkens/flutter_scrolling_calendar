import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/scrolling_years_calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrolling Years Calendar',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Scrolling Calendar'),
      ),
      body: Center(
        child: ScrollingYearsCalendar(
          // Required properties
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(Duration(days: 1 * 365)),
          lastDate: DateTime.now(),
          // Optional properties
          todayColor: Colors.blue,
          highlightedDates: _generateHighlightedDates(),
          highlightedDatesColor: Colors.red,
          monthNames: const <String>[
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
          ],
          onMonthTap: (int year, int month) => print('Tapped $month/$year'),
        ),
      ),
    );
  }

  List<DateTime> _generateHighlightedDates() {
    return List<DateTime>.generate(10, (index) {
      DateTime.now().add(Duration(days: index)).toString();
      return DateTime.now().add(Duration(days: index));
    });
  }
}

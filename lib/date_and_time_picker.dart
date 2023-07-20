
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DateandTimePicker extends StatefulWidget {
  const DateandTimePicker({super.key});

  @override
  State<DateandTimePicker> createState() => _DateandTimePickerState();
}

class _DateandTimePickerState extends State<DateandTimePicker> {
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TableCalendar(
          focusedDay: focusedDay,
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14)
        ),
      )
    );
  }
}
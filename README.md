# flutter_table_calendar

<img width="300" alt="image" src="https://github.com/YamamotoDesu/flutter_table_calendar/assets/47273077/06c5c7d1-9655-4705-a21d-37250b973e2e">

```dart
class DateandTimePicker extends StatefulWidget {
  const DateandTimePicker({super.key});

  @override
  State<DateandTimePicker> createState() => _DateandTimePickerState();
}

class _DateandTimePickerState extends State<DateandTimePicker> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      today = selectedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TableCalendar(
          rowHeight: 35,
          focusedDay: today,
          onDaySelected: _onDaySelected,
          availableGestures: AvailableGestures.all,
          selectedDayPredicate: (day) => isSameDay(today, day),
          headerStyle: const HeaderStyle(formatButtonVisible: false, titleCentered: true),
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14)
        ),
      )
    );
  }
}
```

import 'package:flutter/material.dart';
import '../widgets/calendar_widget.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Schedule')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Select a date for your schedule',
              style: TextStyle(fontSize: 18),
            ),
            CalendarWidget(),
          ],
        ),
      ),
    );
  }
}
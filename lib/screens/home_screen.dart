import 'package:flutter/material.dart';
import '../models/schedule.dart';

class HomeScreen extends StatelessWidget {
  final List<Schedule> scheduleList = [
    Schedule(title: 'Meeting', date: '2025-03-05', time: '10:00 AM'),
    Schedule(title: 'Dentist', date: '2025-03-06', time: '2:00 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Schedule')),
      body: ListView.builder(
        itemCount: scheduleList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(scheduleList[index].title),
            subtitle: Text('${scheduleList[index].date} ${scheduleList[index].time}'),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AddScheduleScreen extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  String selectedDate = 'Select Date';
  String selectedTime = 'Select Time';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Schedule')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            ElevatedButton(
              onPressed: () async {
                final DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );
                if (pickedDate != null) {
                  selectedDate = '${pickedDate.toLocal()}'.split(' ')[0];
                }
              },
              child: Text(selectedDate),
            ),
            ElevatedButton(
              onPressed: () async {
                final TimeOfDay? pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (pickedTime != null) {
                  selectedTime = pickedTime.format(context);
                }
              },
              child: Text(selectedTime),
            ),
            ElevatedButton(
              onPressed: () {
                // 저장 로직
              },
              child: Text('Save Schedule'),
            ),
          ],
        ),
      ),
    );
  }
}
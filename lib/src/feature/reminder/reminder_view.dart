import 'package:flutter/material.dart';

class ReminderView extends StatelessWidget {
  const ReminderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminder'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_alarm),
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const ListTile(
            leading: Icon(Icons.alarm),
            title: Text('Buy a car.'),
            trailing: Icon(Icons.delete),
          );
        },
      ),
    );
  }
}

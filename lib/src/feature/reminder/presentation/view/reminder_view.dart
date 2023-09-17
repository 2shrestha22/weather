import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/feature/reminder/domain/reminder_repo.dart';
import 'package:weather/src/feature/reminder/presentation/bloc/reminder_form_cubit.dart';
import 'package:weather/src/feature/reminder/presentation/view/reminder_form_page.dart';

class ReminderView extends StatelessWidget {
  const ReminderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminder'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_alarm),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) {
                    // Since ReminderRepo will not be available on this route.
                    // We need to pass the Repo manually to FormPage using
                    // context before the BottomSheet.
                    return RepositoryProvider.value(
                      value: context.read<ReminderRepo>(),
                      child: BlocProvider(
                        create: (context) => ReminderFormCubit(
                          context.read<ReminderRepo>(),
                        ),
                        child: const ReminderFormPage(),
                      ),
                    );
                  },
                ),
              );
            },
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

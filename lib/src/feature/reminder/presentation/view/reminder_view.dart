import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather/src/core/extension/string_x.dart';
import 'package:weather/src/feature/reminder/domain/reminder_repo.dart';
import 'package:weather/src/feature/reminder/presentation/bloc/reminder_bloc.dart';
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
      body: BlocBuilder<ReminderBloc, ReminderState>(
        builder: (context, state) {
          if (state.reminders.isEmpty) {
            return const Center(
              child: Text('No reminders.'),
            );
          }
          return ListView.builder(
            itemCount: state.reminders.length,
            itemBuilder: (context, index) {
              final item = state.reminders[index];
              return ListTile(
                onTap: () {
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
                            )..initForm(item),
                            child: const ReminderFormPage(),
                          ),
                        );
                      },
                    ),
                  );
                },
                leading: item.time.isAfter(DateTime.now())
                    ? const Icon(Icons.alarm)
                    : const Icon(
                        Icons.alarm,
                        color: Colors.red,
                      ),
                title: Text(item.title),
                subtitle: Text(
                  DateFormat().format(item.time),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    context
                        .read<ReminderBloc>()
                        .add(ReminderEvent.reminderDeleted(item.id));
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

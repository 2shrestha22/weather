import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/core/constant/sizes.dart';
import 'package:weather/src/core/widget/date_time_form_field.dart';
import 'package:weather/src/feature/reminder/presentation/bloc/reminder_form_cubit.dart';

class ReminderFormPage extends StatefulWidget {
  const ReminderFormPage({super.key});

  @override
  State<ReminderFormPage> createState() => _ReminderFormPageState();
}

class _ReminderFormPageState extends State<ReminderFormPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                onChanged: context.read<ReminderFormCubit>().onTitleChanged,
                validator: (value) {
                  if (value?.isEmpty ?? true) return 'Title is required.';
                  return null;
                },
              ),
              sizedV,
              DateTimeFormField(
                firstDate: DateTime.now(),
                decoration: const InputDecoration(
                  labelText: 'Time',
                ),
                onChanged: context.read<ReminderFormCubit>().onTimeChanged,
                validator: (value) {
                  if (value == null) return 'Time is required.';
                  return null;
                },
              ),
              sizedV,
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Description (optional)',
                ),
                maxLines: 5,
                maxLength: 100,
                onChanged:
                    context.read<ReminderFormCubit>().onDescriptionChanged,
              ),
              sizedV,
              SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.add_alarm),
                  label: const Text('Add reminder'),
                  onPressed: () {
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }
                    context
                        .read<ReminderFormCubit>()
                        .onSubmit()
                        .then((_) => Navigator.pop(context));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

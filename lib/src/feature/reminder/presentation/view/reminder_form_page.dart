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
        appBar: AppBar(
          title: const Text('Create a reminder'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: BlocConsumer<ReminderFormCubit, ReminderFormState>(
            listener: (context, state) {
              if (state.appException != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.appException.toString()),
                  ),
                );
              }
            },
            builder: (context, state) {
              return Column(
                children: [
                  TextFormField(
                    initialValue: state.title,
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
                    initialValue: state.time,
                    firstDate: DateTime.now(),
                    decoration: const InputDecoration(
                      labelText: 'Due time',
                    ),
                    onChanged: context.read<ReminderFormCubit>().onTimeChanged,
                    validator: (value) {
                      if (value == null) return 'Time is required.';
                      if (value.difference(DateTime.now()) <
                          const Duration(minutes: 5)) {
                        return 'Time must be atleast 5 minute ahead from now.';
                      }
                      return null;
                    },
                  ),
                  sizedV,
                  TextFormField(
                    initialValue: state.description,
                    decoration: const InputDecoration(
                      labelText: 'Description (optional)',
                    ),
                    maxLines: 5,
                    maxLength: 100,
                    onChanged:
                        context.read<ReminderFormCubit>().onDescriptionChanged,
                  ),
                  sizedV,
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '* Will notify 5 minutes before the due time.',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      child: const Text('Save'),
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
              );
            },
          ),
        ),
      ),
    );
  }
}

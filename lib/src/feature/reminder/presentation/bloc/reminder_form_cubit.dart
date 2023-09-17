import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:weather/src/feature/reminder/domain/model/reminder.dart';
import 'package:weather/src/feature/reminder/domain/reminder_repo.dart';

part 'reminder_form_state.dart';
part 'reminder_form_cubit.freezed.dart';

class ReminderFormCubit extends Cubit<ReminderFormState> {
  ReminderFormCubit(this._repo) : super(ReminderFormState.initial());

  final ReminderRepo _repo;

  void onTitleChanged(String value) => emit(state.copyWith(title: value));

  void onDescriptionChanged(String value) =>
      emit(state.copyWith(description: value));

  void onTimeChanged(DateTime? value) => emit(state.copyWith(time: value));

  Future<void> onSubmit() async {
    // There is validation in UI so this condition will be always false. But
    // to be sure and avoiding getting runtime exception.
    if (state.title.isEmpty || state.time == null) {
      log(
        'ReminderForm Validation',
        error: "Can't continue because title or time is null or empty",
      );
      return;
    }

    final reminder = Reminder(
      // if state.id is null or empty generate new id else use old id.
      id: (state.id?.isEmpty ?? true) ? const Uuid().v4() : state.id!,
      title: state.title,
      time: state.time!,
    );

    await _repo.createReminder(reminder);
  }
}

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/src/feature/reminder/domain/model/reminder.dart';
import 'package:weather/src/feature/reminder/domain/reminder_repo.dart';

part 'reminder_event.dart';
part 'reminder_state.dart';
part 'reminder_bloc.freezed.dart';

class ReminderBloc extends Bloc<ReminderEvent, ReminderState> {
  ReminderBloc(this._repo) : super(const ReminderState()) {
    on<_Started>(_onStarted);
    on<_ReminderDeleted>(_onReminderDeleted);
  }
  final ReminderRepo _repo;

  FutureOr<void> _onStarted(_Started event, Emitter<ReminderState> emit) async {
    // Start listening to reminder stream and emit state accoriding to state.
    // When item is added, deleted or updated it will be automatically updated.
    await emit.forEach(
      _repo.stream(),
      onData: (data) {
        return state.copyWith(reminders: data);
      },
    );
  }

  FutureOr<void> _onReminderDeleted(
    _ReminderDeleted event,
    Emitter<ReminderState> emit,
  ) async {
    await _repo.deleteReminder(event.id);
  }
}

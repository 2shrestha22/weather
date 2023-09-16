import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/src/core/exception/api_exception.dart';
import 'package:weather/src/feature/weather/domain/model/weather.dart';
import 'package:weather/src/feature/weather/domain/weather_repo.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._repo) : super(const WeatherState(isLoading: true));

  final WeatherRepo _repo;

  Future<void> fetchWeather() async {
    try {
      final weather = await _repo.getCurrentWeather();
      emit(state.copyWith(weather: weather));
    } on ApiException catch (e) {
      emit(state.copyWith(exception: e));
    }
  }
}

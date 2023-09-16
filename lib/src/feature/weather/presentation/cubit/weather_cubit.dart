import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/src/core/exception/app_exception.dart';
import 'package:weather/src/feature/weather/domain/model/weather.dart';
import 'package:weather/src/feature/weather/domain/weather_repo.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this._repo) : super(const WeatherState(isLoading: true));

  final WeatherRepo _repo;

  Future<void> fetchWeather() async {
    emit(state.copyWith(exception: null, isLoading: true));
    try {
      final weather = await _repo.getCurrentWeather();
      emit(
        state.copyWith(
          weather: weather,
          isLoading: false,
        ),
      );
    } on AppException catch (e) {
      emit(state.copyWith(exception: e, isLoading: false));
    } catch (e) {
      emit(
        state.copyWith(
          exception: SomethingWentWrongException(),
          isLoading: false,
        ),
      );
    }
  }
}

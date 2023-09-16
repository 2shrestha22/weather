part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.failure(ApiException exception) = _Failure;
  const factory WeatherState.data(Weather weather) = _Data;
}

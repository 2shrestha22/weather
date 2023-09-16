part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    Weather? weather,
    AppException? exception,
    @Default(false) bool isLoading,
  }) = _WeatherState;
}

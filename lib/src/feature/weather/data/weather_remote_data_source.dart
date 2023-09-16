import 'package:weather/src/core/network/api_response.dart';
import 'package:weather/src/core/network/base_remote_source.dart';
import 'package:weather/src/feature/weather/domain/model/weather.dart';

class WeatherRemoteDataSource extends BaseRemoteSource {
  WeatherRemoteDataSource(super.dio);

  Future<Weather> getCurrentWeather(double lat, double lng) async {
    const weatherApiKey = String.fromEnvironment('API_KEY');
    final res = await get(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lng&appid=$weatherApiKey');

    return switch (res) {
      SuccessResponse() => Weather.fromJson(res.data),
      FailureResponse() => throw res.exception,
    };
  }
}

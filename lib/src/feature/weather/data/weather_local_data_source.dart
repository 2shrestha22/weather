import 'package:weather/src/core/helper/storage_helper.dart';
import 'package:weather/src/core/service/storage_service.dart';
import 'package:weather/src/feature/weather/domain/model/weather.dart';

class WeatherLocalDataSource {
  Weather? getWeather() {
    final data =
        StorageService().get(StorageHelper.weatherKey) as Map<String, dynamic>?;
    if (data == null) return null;
    return Weather.fromJson(data);
  }

  Future<Weather> saveWeather(Weather weather) async {
    await StorageService().put(StorageHelper.weatherKey, weather);
    return weather;
  }
}

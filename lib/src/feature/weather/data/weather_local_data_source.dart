import 'package:hive/hive.dart';
import 'package:weather/src/core/helper/storage_helper.dart';
import 'package:weather/src/core/service/storage_service.dart';
import 'package:weather/src/feature/weather/domain/model/weather.dart';

class WeatherLocalDataSource {
  WeatherLocalDataSource()
      : _storageService = StorageService(Hive.box(StorageHelper.cacheBoxName));

  final StorageService _storageService;

  Weather? getWeather() {
    final data =
        _storageService.get(StorageHelper.weatherKey) as Map<String, dynamic>?;
    if (data == null) return null;
    return Weather.fromJson(data);
  }

  Future<Weather> saveWeather(Weather weather) async {
    await _storageService.put(StorageHelper.weatherKey, weather);
    return weather;
  }
}

import 'package:weather/src/core/exception/api_exception.dart';
import 'package:weather/src/core/helper/cache_manager.dart';
import 'package:weather/src/core/helper/storage_helper.dart';
import 'package:weather/src/feature/weather/data/weather_remote_data_source.dart';
import 'package:weather/src/feature/weather/domain/model/weather.dart';
import 'package:weather/src/feature/weather/domain/weather_repo.dart';

class WeatherRepoImpl implements WeatherRepo {
  WeatherRepoImpl({WeatherRemoteDataSource? weatherRemoteDataSource})
      : _remoteDataSource =
            weatherRemoteDataSource ?? WeatherRemoteDataSource();

  final WeatherRemoteDataSource _remoteDataSource;

  @override
  Future<Weather> getCurrentWeather() async {
    try {
      final weather =
          await _remoteDataSource.getCurrentWeather(27.7172, 85.3240);
      await CacheManager().addToCache(StorageHelper.weatherKey, weather);
      return weather;
    } on ApiException {
      final data = CacheManager().getFromCache(StorageHelper.weatherKey)
          as Map<String, dynamic>?;
      if (data == null) rethrow;
      return Weather.fromJson(data);
    }
  }
}

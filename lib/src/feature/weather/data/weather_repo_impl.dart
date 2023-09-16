import 'package:weather/src/core/exception/app_exception.dart';
import 'package:weather/src/core/service/location_service.dart';
import 'package:weather/src/feature/weather/data/weather_local_data_source.dart';
import 'package:weather/src/feature/weather/data/weather_remote_data_source.dart';
import 'package:weather/src/feature/weather/domain/model/weather.dart';
import 'package:weather/src/feature/weather/domain/weather_repo.dart';

class WeatherRepoImpl implements WeatherRepo {
  WeatherRepoImpl({
    WeatherRemoteDataSource? weatherRemoteDataSource,
    WeatherLocalDataSource? weatherLocalDataSource,
  })  : _remoteDataSource =
            weatherRemoteDataSource ?? WeatherRemoteDataSource(),
        _localDataSource = weatherLocalDataSource ?? WeatherLocalDataSource();

  final WeatherRemoteDataSource _remoteDataSource;
  final WeatherLocalDataSource _localDataSource;

  @override
  Future<Weather> getCurrentWeather() async {
    try {
      final coordinates = await LocationService.getCurrentCoordinates();

      final weather = await _remoteDataSource.getCurrentWeather(
        coordinates.$1,
        coordinates.$2,
      );
      return _localDataSource.saveWeather(weather);
    } on AppException {
      final data = _localDataSource.getWeather();
      if (data == null) rethrow;
      return data;
    }
  }
}

import 'package:weather/src/feature/weather/data/weather_remote_data_source.dart';
import 'package:weather/src/feature/weather/domain/model/weather.dart';
import 'package:weather/src/feature/weather/domain/weather_repo.dart';

class WeatherRepoImpl implements WeatherRepo {
  WeatherRepoImpl(this._remoteDataSource);

  final WeatherRemoteDataSource _remoteDataSource;

  @override
  Future<Weather> getCurrentWeather() {
    return _remoteDataSource.getCurrentWeather(27.7172, 85.3240);
  }
}

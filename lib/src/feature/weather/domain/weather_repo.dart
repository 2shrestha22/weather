import 'package:weather/src/feature/weather/domain/model/weather.dart';

abstract class WeatherRepo {
  Future<Weather> getCurrentWeather() => throw UnimplementedError();
}

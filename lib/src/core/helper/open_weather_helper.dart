/// Helper class for OpenWeather
class OpenWeatherHelper {
  const OpenWeatherHelper._();

  static String getIconUrl(String iconId, {int multiple = 1}) {
    if (multiple == 1) {
      return "https://openweathermap.org/img/wn/$iconId.png";
    }
    return "https://openweathermap.org/img/wn/$iconId@${multiple}x.png";
  }
}

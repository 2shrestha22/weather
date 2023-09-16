import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/core/constant/app_colors.dart';
import 'package:weather/src/core/constant/sizes.dart';
import 'package:weather/src/core/extension/color_x.dart';
import 'package:weather/src/core/helper/open_weather_helper.dart';
import 'package:weather/src/core/widget/error_indicator.dart';
import 'package:weather/src/core/widget/loading_indicator.dart';
import 'package:weather/src/feature/weather/domain/model/weather.dart';
import 'package:weather/src/feature/weather/presentation/cubit/weather_cubit.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _WeatherBackground(),
        SafeArea(
          child: BlocBuilder<WeatherCubit, WeatherState>(
            builder: (context, state) {
              final weather = state.weather;

              if (weather == null) {
                // when weather is no yet availabe. Should show either loading
                // or error.
                if (state.exception != null) {
                  return ErrorIndicator(
                    message: state.exception.toString(),
                    onRetry: () => context.read<WeatherCubit>().fetchWeather(),
                  );
                }
                return const LoadingIndicator();
              } else {
                // weather is availabe. user can refresh weather.
                return RefreshIndicator(
                  onRefresh: () async {
                    await context.read<WeatherCubit>().fetchWeather();
                  },
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(32),
                    child: Column(
                      children: [
                        sizedV,
                        sizedV,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_pin,
                              size: 42,
                            ),
                            Text(
                              weather.city,
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                          ],
                        ),
                        _WeatherInfo(weather: weather),
                        sizedV,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Min: ${weather.weatherData.tempMin} \u2103'),
                            sizedH,
                            sizedH,
                            Text('Max: ${weather.weatherData.tempMax} \u2103'),
                          ],
                        ),
                        Text('Pressure: ${weather.weatherData.pressure} hPa'),
                        Text('Humidity: ${weather.weatherData.humidity} %'),
                      ],
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

class _WeatherInfo extends StatelessWidget {
  const _WeatherInfo({
    required this.weather,
  });

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          Flexible(
            child: CachedNetworkImage(
              fit: BoxFit.scaleDown,
              imageUrl: OpenWeatherHelper.getIconUrl(
                weather.weatherConditions.first.icon,
                multiple: 4,
              ),
            ),
          ),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weather.weatherConditions.first.description.toUpperCase(),
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  '${weather.weatherData.temp} \u2103',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  'Feels like ${weather.weatherData.temp} \u2103',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _WeatherBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const color = AppColors.primary;
    return SizedBox.expand(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.25, 0.75, 0.90, 1.0],
            colors: [
              color,
              color.brighten(),
              color.brighten(33),
              color.brighten(50),
            ],
          ),
        ),
      ),
    );
  }
}

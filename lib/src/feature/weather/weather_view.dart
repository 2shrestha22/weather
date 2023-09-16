import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/core/helper/open_weather_helper.dart';
import 'package:weather/src/core/widget/error_indicator.dart';
import 'package:weather/src/core/widget/loading_indicator.dart';
import 'package:weather/src/feature/weather/presentation/cubit/weather_cubit.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        return state.when(
            loading: () => const LoadingIndicator(),
            failure: (e) => ErrorIndicator(message: e.toString()),
            data: (weather) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Today',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(weather.weatherConditions.first.main),
                    CachedNetworkImage(
                      imageUrl: OpenWeatherHelper.getIconUrl(
                        weather.weatherConditions.first.icon,
                      ),
                    ),
                    Text(weather.weatherConditions.first.description),
                  ],
                ),
              );
            });
      },
    );
  }
}

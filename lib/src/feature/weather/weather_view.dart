import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          failure: (e) => Text(e.toString()),
          data: (weather) => ErrorIndicator(message: weather.toString()),
        );
      },
    );
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/app/dashboard_page.dart';
import 'package:weather/src/feature/weather/data/weather_remote_data_source.dart';
import 'package:weather/src/feature/weather/data/weather_repo_impl.dart';
import 'package:weather/src/feature/weather/domain/weather_repo.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => Dio(),
      child: Builder(builder: (context) {
        return MultiRepositoryProvider(
          providers: [
            RepositoryProvider<WeatherRepo>(
              create: (context) =>
                  WeatherRepoImpl(WeatherRemoteDataSource(context.read<Dio>())),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(useMaterial3: true),
            title: 'Weather',
            home: const DashboardPage(),
          ),
        );
      }),
    );
  }
}

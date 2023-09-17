import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/src/feature/reminder/data/reminder_repo_impl.dart';
import 'package:weather/src/feature/reminder/domain/reminder_repo.dart';
import 'package:weather/src/feature/reminder/presentation/bloc/reminder_bloc.dart';
import 'package:weather/src/feature/reminder/presentation/view/reminder_view.dart';
import 'package:weather/src/feature/weather/data/weather_repo_impl.dart';
import 'package:weather/src/feature/weather/domain/weather_repo.dart';
import 'package:weather/src/feature/weather/presentation/cubit/weather_cubit.dart';
import 'package:weather/src/feature/weather/presentation/weather_view.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int viewIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<WeatherRepo>(
          create: (context) => WeatherRepoImpl(),
        ),
        RepositoryProvider<ReminderRepo>(
          create: (context) => ReminderRepoImpl(),
        ),
      ],
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: pageController.jumpToPage,
          currentIndex: viewIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.sunny), label: 'Weather'),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'Reminder',
            ),
          ],
        ),
        body: Builder(
          builder: (context) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) =>
                      WeatherCubit(context.read<WeatherRepo>())..fetchWeather(),
                ),
                BlocProvider(
                  create: (context) =>
                      ReminderBloc(context.read<ReminderRepo>())
                        ..add(const ReminderEvent.started()),
                ),
              ],
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    viewIndex = value;
                  });
                },
                children: const [
                  WeatherView(),
                  ReminderView(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

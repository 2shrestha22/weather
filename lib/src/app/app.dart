import 'package:flutter/material.dart';
import 'package:weather/src/app/dashboard_page.dart';
import 'package:weather/src/core/constant/app_colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
      ).copyWith(
        appBarTheme: const AppBarTheme(centerTitle: true),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          alignLabelWithHint: true,
        ),
      ),
      title: 'Weather',
      home: const DashboardPage(),
    );
  }
}

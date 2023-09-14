import 'package:flutter/material.dart';
import 'package:weather/src/core/navbar/dashboard_page.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      title: 'Weather',
      home: const DashboardPage(),
    );
  }
}

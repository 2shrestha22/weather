import 'package:flutter/material.dart';
import 'package:weather/src/app/dashboard_page.dart';

class App extends StatelessWidget {
  const App({super.key});

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

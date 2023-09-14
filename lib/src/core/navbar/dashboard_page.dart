import 'package:flutter/material.dart';
import 'package:weather/src/feature/remainder/remainder_view.dart';
import 'package:weather/src/feature/weather/weather_view.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          pageController.jumpToPage(value);
        },
        currentIndex: viewIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.sunny), label: 'Weather'),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Remainder'),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            viewIndex = value;
          });
        },
        children: const [
          WeatherView(),
          RemainderView(),
        ],
      ),
    );
  }
}

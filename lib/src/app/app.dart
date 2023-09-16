import 'package:dynamik_theme/dynamik_theme.dart';
import 'package:flutter/material.dart';
import 'package:weather/src/app/dashboard_page.dart';
import 'package:weather/src/core/constant/app_colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamikTheme(
      config: ThemeConfig(
        useMaterial3: true,
        // You can also generate color schemes from:
        // https://m3.material.io/theme-builder#/custom
        lightScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
        ),
        darkScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: Brightness.dark,
        ),
        defaultThemeState: SimpleThemeType.dynamik.themeState,
        builder: (themeData) {
          // Add more customization on ThemeData.
          return themeData.copyWith(
            appBarTheme: const AppBarTheme(centerTitle: true),
            inputDecorationTheme: const InputDecorationTheme(
              border: OutlineInputBorder(),
            ),
          );
        },
      ),
      builder: (theme, darkTheme, themeMode) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: darkTheme,
        title: 'Weather',
        home: const DashboardPage(),
      ),
    );
  }
}

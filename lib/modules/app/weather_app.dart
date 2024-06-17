import 'package:flutter/material.dart';

import '../features/weather_search/presentation/screens/weather_screen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: const WeatherScreen(),
        theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue.withOpacity(0.5),
          ),
        ),
      );
}

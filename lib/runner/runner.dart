import 'package:flutter/widgets.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../modules/app/weather_app.dart';
import '../modules/app/weather_app_provider.dart';

Future<void> runApplication() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();

  runApp(const WeatherAppProvider(child: WeatherApp()));
}

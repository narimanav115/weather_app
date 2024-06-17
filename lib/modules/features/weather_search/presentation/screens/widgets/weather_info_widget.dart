import 'package:flutter/material.dart';

import '../../../domain/models/weather_data_model.dart';

const _temperatureTextStyle = TextStyle(color: Colors.blue, fontSize: 20);

const _titleTextStyle = TextStyle(color: Colors.white, fontSize: 30);

class WeatherInfoWidget extends StatelessWidget {
  final WeatherDataModel info;
  final String title;

  const WeatherInfoWidget({
    super.key,
    required this.info,
    required this.title,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: _titleTextStyle),
          Image.network(
            info.icon,
            semanticLabel: 'WeatherIcon',
          ),
          Text(info.title, style: _titleTextStyle),
          const SizedBox(height: 20),
          Text('${info.temperature}°', style: _titleTextStyle),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Min: ${info.minTemperature}°',
                style: _temperatureTextStyle,
              ),
              const SizedBox(width: 32),
              Text(
                'Max: ${info.maxTemperature}°',
                style: _temperatureTextStyle,
              ),
            ],
          ),
        ],
      );
}

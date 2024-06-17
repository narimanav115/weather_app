import 'package:flutter/cupertino.dart';

import '../data/mappers/weather_data_mapper.dart';
import '../data/weather_api.dart';
import 'models/weather_data_model.dart';

const _weatherIconLink = 'https://openweathermap.org/img/wn/';

class WeatherRepository {
  final WeatherApi _api;

  String? get error => _error;
  String? _error;

  WeatherRepository(this._api);

  Future<WeatherDataModel?> getWeather({
    required num latitude,
    required num longitude,
  }) async {
    _error = null;
    try {
      final response = await _api.getWeather(latitude, longitude);

      return response.toModel(_weatherIconLink);
    } on Object catch (error) {
      debugPrint(error.toString());
      _error = 'No data';

      return null;
    }
  }
}

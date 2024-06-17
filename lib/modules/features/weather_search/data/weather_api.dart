import 'package:dio/dio.dart';

import 'dto/weather/weather_data_dto.dart';

const _openWeatherBaseUrl = 'https://api.openweathermap.org';
const _apiKey = '573ad20446a4f626a11a2e761da3e89c';

class WeatherApi {
  final Dio _client;

  const WeatherApi(this._client);

  Future<WeatherDataDto> getWeather(num latitude, num longitude) =>
      _client.get<Map<String, Object?>>(
        '$_openWeatherBaseUrl/data/2.5/weather',
        queryParameters: {
          'lat': '$latitude',
          'lon': '$longitude',
          'units': 'metric',
          'appid': _apiKey,
        },
      ).then((response) => WeatherDataDto.fromJson(response.data!));
}

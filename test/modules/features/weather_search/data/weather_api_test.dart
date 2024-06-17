import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_test/modules/features/weather_search/data/weather_api.dart';

import '../../../../mocks/dio_mock.dart';

void main() {
  group('$WeatherApi', () {
    late DioMock dioMock;

    setUp(() {
      dioMock = DioMock();

      when(
        () => dioMock.get<Map<String, Object?>>(
          'https://api.openweathermap.org/data/2.5/weather',
          queryParameters: {
            'lat': '39.2',
            'lon': '9.3',
            'units': 'metric',
            'appid': '573ad20446a4f626a11a2e761da3e89c',
          },
        ),
      ).thenAnswer(
        (_) async => Response(
          data: jsonDecode(_json) as Map<String, Object?>,
          requestOptions: RequestOptions(
            path: 'https://api.openweathermap.org/data/2.5/weather',
          ),
        ),
      );
    });

    test('calls $Dio.post method', () async {
      await WeatherApi(dioMock).getWeather(39.2, 9.3);

      verify(
        () => dioMock.get<Map<String, Object?>>(
          'https://api.openweathermap.org/data/2.5/weather',
          queryParameters: {
            'lat': '39.2',
            'lon': '9.3',
            'units': 'metric',
            'appid': '573ad20446a4f626a11a2e761da3e89c',
          },
        ),
      ).called(1);
    });
  });
}

const _json = '''
{ 
"weather": [
    {
      "id": 501,
      "main": "Rain",
      "description": "moderate rain",
      "icon": "10d"
      }
    ],
"main": {
    "temp": 298.48,
    "temp_min": 297.56,
    "temp_max": 300.05
    }
}
''';

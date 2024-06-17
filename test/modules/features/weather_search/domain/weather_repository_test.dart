import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/weather/weather_data_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/weather/weather_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/weather/weather_info_dto.dart';
import 'package:weather_test/modules/features/weather_search/domain/weather_repository.dart';

import '../../../../mocks/weather_api_mock.dart';

const _weatherDto = WeatherDataDto(
  main: WeatherInfoDto(temp: 30, tempMin: 29, tempMax: 32),
  weather: [WeatherDto(main: 'Sunny', icon: '10d')],
);

void main() {
  group('$WeatherRepository', () {
    late WeatherApiMock weatherApiMock;

    setUp(() {
      weatherApiMock = WeatherApiMock();
    });

    test('getWeather returns correct model', () async {
      when(() => weatherApiMock.getWeather(any(), any())).thenAnswer(
        (_) => Future.value(_weatherDto),
      );

      final repository = WeatherRepository(weatherApiMock);
      await repository.getWeather(latitude: 30, longitude: 31);

      verify(() => weatherApiMock.getWeather(30, 31)).called(1);

      expect(repository.error, isNull);
    });

    test('getWeather throws dio exception', () async {
      when(() => weatherApiMock.getWeather(any(), any())).thenThrow(
        DioException(requestOptions: RequestOptions()),
      );

      final repository = WeatherRepository(weatherApiMock);
      await repository.getWeather(latitude: 30, longitude: 31);

      verify(() => weatherApiMock.getWeather(30, 31)).called(1);

      expect(repository.error, isNotNull);
    });
  });
}

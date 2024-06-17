import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/cities/address_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/cities/cities_list_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/cities/city_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/cities/geo_code_dto.dart';
import 'package:weather_test/modules/features/weather_search/domain/cities_repository.dart';

import '../../../../mocks/cities_search_api_mock.dart';

const _cityDto = CitiesListDto(
  data: [
    CityDto(
      name: 'Paris',
      address: AddressDto(
        countryCode: 'FR',
      ),
      geoCode: GeoCodeDto(
        latitude: 39.2,
        longitude: 3.2,
      ),
    ),
  ],
);

void main() {
  group('$CitiesRepository', () {
    late CitiesSearchApiMock citiesSearchApiMock;

    setUp(() {
      citiesSearchApiMock = CitiesSearchApiMock();
    });

    test('search returns correct model', () async {
      when(() => citiesSearchApiMock.search(any())).thenAnswer(
        (_) => Future.value(_cityDto),
      );

      final repository = CitiesRepository(citiesSearchApiMock);
      await repository.search('PAR');

      verify(() => citiesSearchApiMock.search('PAR')).called(1);

      expect(repository.error, isNull);
    });

    test('search throws dio exception', () async {
      when(() => citiesSearchApiMock.search(any())).thenThrow(
        DioException(
          requestOptions: RequestOptions(),
          response: Response(
            data: {
              'errors': [
                {
                  'status': 500,
                  'code': 141,
                  'title': 'SYSTEM ERROR HAS OCCURRED',
                },
              ],
            },
            requestOptions: RequestOptions(),
          ),
        ),
      );

      final repository = CitiesRepository(citiesSearchApiMock);
      await repository.search('PAR');

      verify(() => citiesSearchApiMock.search('PAR')).called(1);

      expect(repository.error, isNotNull);
    });
  });
}

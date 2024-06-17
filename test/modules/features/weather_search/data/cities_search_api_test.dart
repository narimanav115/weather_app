import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_test/modules/features/weather_search/data/cities_search_api.dart';

import '../../../../mocks/dio_mock.dart';

void main() {
  group('$CitiesSearchApi', () {
    late DioMock dioMock;

    setUp(() {
      dioMock = DioMock();

      when(
        () => dioMock.get<Map<String, Object?>>(
          '/v1/reference-data/locations/cities',
          queryParameters: {'keyword': 'PAR', 'max': 30},
        ),
      ).thenAnswer(
        (_) async => Response(
          data: jsonDecode(_json) as Map<String, Object?>,
          requestOptions: RequestOptions(
            path: '/v1/reference-data/locations/cities',
          ),
        ),
      );
    });

    test('calls $Dio.post method', () async {
      await CitiesSearchApi(dioMock).search('PAR');

      verify(
        () => dioMock.get<Map<String, Object?>>(
          '/v1/reference-data/locations/cities',
          queryParameters: {'keyword': 'PAR', 'max': 30},
        ),
      ).called(1);
    });
  });
}

const _json = '''
{
  "data": [
    {
      "type": "location",
      "subType": "city",
      "name": "PARIS",
      "iataCode": "PAR",
      "address": {
        "countryCode": "FR"
      },
      "geoCode": {
        "latitude": 49.01278,
        "longitude": 2.55
      },
      "relationships": [
        {
          "id": "CDG",
          "type": "Airport",
          "href": "#/included/airports/CDG"
        },
        {
          "id": "ORY",
          "type": "Airport",
          "href": "#/included/airports/ORY"
        }
      ]
    }
  ],
  "included": {
    "airports": {
      "CDG": {
        "name": "CHARLES DE GAULLE",
        "iataCode": "CDG",
        "subType": "Airport"
      },
      "ORY": {
        "name": "ORLY",
        "iataCode": "ORY",
        "subType": "Airport"
      }
    }
  },
  "meta": {
    "count": "1",
    "links": {
      "self": "https://api.amadeus.net/v1/reference-data/locations/cities/keyword=PARIS&CountryCode=FR&include=AIRPORTS"
    }
  }
}
''';

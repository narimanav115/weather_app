import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_test/modules/services/amadeus_token_refresher/amadeus_token_refresher.dart';

import '../../../mocks/dio_mock.dart';

void main() {
  test(
    '$AmadeusTokenRefresher.refreshToken fetches and return new tokens',
    () async {
      final dioMock = DioMock();

      when(
        () => dioMock.post<Map<String, Object?>>(
          '/v1/security/oauth2/token',
          data: any(named: 'data'),
        ),
      ).thenAnswer(
        (_) async => Response(
          data: {
            'access_token': 'accessToken',
            'token_type': 'Bearer',
          },
          requestOptions: RequestOptions(
            path: '/v1/security/oauth2/token',
          ),
        ),
      );

      final refresher = AmadeusTokenRefresher(dioMock);

      final tokens = await refresher.refreshToken();

      expect(tokens.accessToken, equals('accessToken'));
      expect(tokens.accessTokenType, equals('Bearer'));
    },
  );
}

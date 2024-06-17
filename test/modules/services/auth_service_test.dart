import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_test/modules/services/auth_service.dart';
import 'package:weather_test/modules/services/auth_token_storage/models/auth_tokens.dart';

import '../../mocks/amadeus_token_refresher_mock.dart';
import '../../mocks/auth_token_storage_mock.dart';

const _tokens = AuthTokens(accessToken: 'access', accessTokenType: 'Bearer');

void main() {
  final authTokenStorageMock = AuthTokenStorageMock();
  final amadeusTokenRefresher = AmadeusTokenRefresherMock();
  setUp(() {
    registerFallbackValue(_tokens);
    when(authTokenStorageMock.restoreTokens).thenAnswer(Future.value);
    when(() => authTokenStorageMock.tokens).thenReturn(null);
    when(() => authTokenStorageMock.saveTokens(any())).thenAnswer(Future.value);
    when(amadeusTokenRefresher.refreshToken).thenAnswer(
      (_) => Future.value(_tokens),
    );
  });

  test('$AuthService init', () {
    fakeAsync((async) {
      AuthService(
        authTokenStorage: authTokenStorageMock,
        amadeusTokenRefresher: amadeusTokenRefresher,
      ).init();
      async.elapse(Duration.zero);

      verify(authTokenStorageMock.restoreTokens).called(1);
      verify(() => authTokenStorageMock.saveTokens(any())).called(1);
      verify(amadeusTokenRefresher.refreshToken).called(1);
    });
  });
}

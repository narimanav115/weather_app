import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_test/modules/services/auth_token_storage/auth_token_storage.dart';
import 'package:weather_test/modules/services/auth_token_storage/models/auth_tokens.dart';

import '../../../mocks/flutter_secure_storage_mock.dart';

const _tokens = AuthTokens(
  accessToken: 'accessToken',
  accessTokenType: 'Bearer',
);

void main() {
  group('$AuthTokenStorage', () {
    late FlutterSecureStorageMock secureStorageMock;

    setUp(() {
      secureStorageMock = FlutterSecureStorageMock();

      when(() => secureStorageMock.delete(key: any(named: 'key')))
          .thenAnswer((_) => Future<void>.value());

      when(
        () => secureStorageMock.write(
          key: any(named: 'key'),
          value: any(named: 'value'),
        ),
      ).thenAnswer((_) => Future<void>.value());

      when(() => secureStorageMock.containsKey(key: any(named: 'key')))
          .thenAnswer((_) async => true);
    });

    group('restores tokens', () {
      setUp(() {
        when(() => secureStorageMock.read(key: 'KEY_TOKEN'))
            .thenAnswer((_) => Future<String?>.value('token'));

        when(() => secureStorageMock.read(key: 'KEY_TYPE'))
            .thenAnswer((_) => Future<String?>.value('Bearer'));
      });

      test('reads previously stored data from security storage', () async {
        final tokenStorage = AuthTokenStorage(
          secureStorageMock,
        );

        expect(tokenStorage.tokens, isNull);

        await tokenStorage.restoreTokens();

        expect(tokenStorage.tokens, isNotNull);
      });

      test('reads from empty storage', () async {
        final tokenStorage = AuthTokenStorage(secureStorageMock);

        expect(tokenStorage.tokens, isNull);

        when(() => secureStorageMock.read(key: any(named: 'key')))
            .thenAnswer((_) => Future<String?>.value());

        await tokenStorage.restoreTokens();

        expect(tokenStorage.tokens, isNull);
      });
    });

    test('saves tokens store all data in security storage', () async {
      final tokenStorage = AuthTokenStorage(secureStorageMock);

      expect(tokenStorage.tokens, isNull);

      await tokenStorage.saveTokens(_tokens);

      verify(
        () => secureStorageMock.write(
          key: 'KEY_TOKEN',
          value: _tokens.accessToken,
        ),
      ).called(1);
      verify(
        () => secureStorageMock.write(
          key: 'KEY_TYPE',
          value: _tokens.accessTokenType,
        ),
      ).called(1);

      expect(tokenStorage.tokens, equals(_tokens));
    });

    test('clears data remove all data from security storage', () async {
      final tokenStorage = AuthTokenStorage(secureStorageMock);

      await tokenStorage.clearData();

      verify(() => secureStorageMock.containsKey(key: 'KEY_TOKEN')).called(1);
      verify(() => secureStorageMock.containsKey(key: 'KEY_TYPE')).called(1);
      verify(() => secureStorageMock.delete(key: 'KEY_TOKEN')).called(1);
      verify(() => secureStorageMock.delete(key: 'KEY_TYPE')).called(1);
    });
  });
}

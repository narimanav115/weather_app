import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_test/modules/services/auth_token_storage/models/auth_tokens.dart';
import 'package:weather_test/modules/services/network/interceptors/auth_dio_interceptor.dart';

import '../../../../mocks/amadeus_token_refresher_mock.dart';
import '../../../../mocks/auth_token_storage_mock.dart';
import '../../../../mocks/dio_mock.dart';
import '../../../../mocks/error_interceptor_handler_mock.dart';
import '../../../../mocks/request_interceptor_handler_mock.dart';

const _tokens = AuthTokens(
  accessToken: 'accessToken',
  accessTokenType: 'Bearer',
);

void main() {
  setUpAll(() {
    registerFallbackValue(RequestOptions(path: '/'));
    registerFallbackValue(_tokens);
  });

  group('$AuthDioInterceptor', () {
    late AuthTokenStorageMock authTokenStorageMock;

    setUp(() {
      authTokenStorageMock = AuthTokenStorageMock();

      when(() => authTokenStorageMock.saveTokens(any()))
          .thenAnswer(Future.value);
    });

    test('onRequest pass original request if auth token not defined', () {
      final interceptor = AuthDioInterceptor(
        authTokenStorageMock,
        AmadeusTokenRefresherMock(),
        DioMock(),
      );
      final nextHandler = RequestInterceptorHandlerMock();

      interceptor.onRequest(RequestOptions(path: '/'), nextHandler);

      final response = verify(() => nextHandler.next(captureAny()))
          .captured
          .cast<RequestOptions>()
          .single;

      expect(response.headers, isEmpty);
    });

    test('onRequest change original request if auth tokens defined', () {
      when(() => authTokenStorageMock.tokens).thenReturn(_tokens);

      final interceptor = AuthDioInterceptor(
        authTokenStorageMock,
        AmadeusTokenRefresherMock(),
        DioMock(),
      );
      final nextHandler = RequestInterceptorHandlerMock();

      interceptor.onRequest(RequestOptions(path: '/'), nextHandler);

      final response = verify(() => nextHandler.next(captureAny()))
          .captured
          .cast<RequestOptions>()
          .single;

      expect(
        response.headers,
        containsPair('Authorization', 'Bearer accessToken'),
      );
    });

    group('onError', () {
      final requestOptions = RequestOptions(path: '/handler');

      late ErrorInterceptorHandlerMock handler;

      setUp(() {
        handler = ErrorInterceptorHandlerMock();
      });

      group('process non unauthorized error', () {
        final error = DioException(
          requestOptions: requestOptions,
          response: Response<void>(
            requestOptions: requestOptions,
            statusCode: HttpStatus.unauthorized,
          ),
        );

        test('with stored tokens', () async {
          const newTokens = AuthTokens(
            accessToken: 'newAccessToken',
            accessTokenType: 'Bearer',
          );
          final refreshTokensResponse =
              Response<void>(requestOptions: requestOptions, statusCode: 200);

          final authTokenRefresherMock = AmadeusTokenRefresherMock();
          final dioMock = DioMock();

          when(() => authTokenStorageMock.tokens).thenReturn(_tokens);

          when(authTokenRefresherMock.refreshToken)
              .thenAnswer((_) async => newTokens);

          when(() => dioMock.fetch<Object?>(any()))
              .thenAnswer((_) async => refreshTokensResponse);

          await AuthDioInterceptor(
            authTokenStorageMock,
            authTokenRefresherMock,
            dioMock,
          ).onError(error, handler);

          verify(() => handler.resolve(refreshTokensResponse)).called(1);
        });

        test('updates tokens and returns request exception', () async {
          const newTokens = AuthTokens(
            accessToken: 'newAccessToken',
            accessTokenType: 'Bearer',
          );
          final requestWithException = DioException(
            requestOptions: requestOptions,
            response: Response<String>(requestOptions: requestOptions),
          );

          final authTokenRefresherMock = AmadeusTokenRefresherMock();
          final dioMock = DioMock();

          when(() => authTokenStorageMock.tokens).thenReturn(_tokens);

          when(authTokenRefresherMock.refreshToken)
              .thenAnswer((_) async => newTokens);

          when(() => dioMock.fetch<Object?>(any()))
              .thenThrow(requestWithException);

          await AuthDioInterceptor(
            authTokenStorageMock,
            authTokenRefresherMock,
            dioMock,
          ).onError(error, handler);

          verify(() => handler.reject(requestWithException)).called(1);
        });
      });

      test('pass any non unauthorized errors to next handler', () async {
        final interceptor = AuthDioInterceptor(
          authTokenStorageMock,
          AmadeusTokenRefresherMock(),
          DioMock(),
        );

        final error = DioException(requestOptions: requestOptions);

        await interceptor.onError(error, handler);

        verify(() => handler.next(error)).called(1);
      });
    });
  });
}

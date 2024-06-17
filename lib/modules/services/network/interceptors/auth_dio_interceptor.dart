import 'dart:io';

import 'package:dio/dio.dart';

import '../../amadeus_token_refresher/amadeus_token_refresher.dart';
import '../../auth_token_storage/auth_token_storage.dart';

class AuthDioInterceptor extends QueuedInterceptor {
  final AuthTokenStorage _authTokenStorage;
  final AmadeusTokenRefresher _authTokenRefresher;
  final Dio _dio;

  AuthDioInterceptor(
    this._authTokenStorage,
    this._authTokenRefresher,
    this._dio,
  );

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final tokens = _authTokenStorage.tokens;
    if (tokens != null) {
      options.headers['Authorization'] =
          '${tokens.accessTokenType} ${tokens.accessToken}';
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      final options = err.requestOptions;
      final tokens = await _authTokenRefresher.refreshToken();
      await _authTokenStorage.saveTokens(tokens);
      options.headers['Authorization'] =
          '${tokens.accessTokenType} ${tokens.accessToken}';

      try {
        handler.resolve(await _dio.fetch<Object?>(options));
      } on DioException catch (error) {
        handler.reject(error);
      }

      return;
    }

    handler.next(err);
  }
}

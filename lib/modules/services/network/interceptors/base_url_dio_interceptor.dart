import 'package:dio/dio.dart';

class BaseUrlDioInterceptor extends Interceptor {
  final String _baseUrl;

  const BaseUrlDioInterceptor(this._baseUrl);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.baseUrl = _baseUrl;

    handler.next(options);
  }
}

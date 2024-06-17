import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';

import '../features/weather_search/data/cities_search_api.dart';
import '../features/weather_search/data/weather_api.dart';
import '../features/weather_search/domain/cities_repository.dart';
import '../features/weather_search/domain/weather_repository.dart';
import '../features/weather_search/presentation/bloc/weather_screen_bloc.dart';
import '../services/amadeus_token_refresher/amadeus_token_refresher.dart';
import '../services/auth_service.dart';
import '../services/auth_token_storage/auth_token_storage.dart';
import '../services/network/interceptors/auth_dio_interceptor.dart';
import '../services/network/interceptors/base_url_dio_interceptor.dart';
import '../utils/extensions/function_extensions.dart';

class WeatherAppProvider extends StatelessWidget {
  final Widget child;

  const WeatherAppProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          Provider<FlutterSecureStorage>(
            create: (_) => const FlutterSecureStorage(
              iOptions: IOSOptions(
                accessibility: KeychainAccessibility.first_unlock,
              ),
              aOptions: AndroidOptions(encryptedSharedPreferences: true),
            ),
          ),
          Provider<AuthTokenStorage>(
            create: (context) => AuthTokenStorage(
              context.read(),
            ),
          ),
          Provider(
            create: (_) {
              final dio = Dio(
                BaseOptions(
                  headers: {'accept': Headers.jsonContentType},
                  contentType: Headers.formUrlEncodedContentType,
                ),
              ).map(
                (dio) => dio
                  ..interceptors.addAll(
                    [
                      const BaseUrlDioInterceptor(
                        'https://test.api.amadeus.com',
                      ),
                      LogInterceptor(),
                      RetryInterceptor(dio: dio),
                    ],
                  ),
              );

              return AmadeusTokenRefresher(dio);
            },
          ),
          Provider<CitiesSearchApi>(
            create: (context) {
              final dio = Dio(
                BaseOptions(
                  headers: {'accept': Headers.jsonContentType},
                  contentType: Headers.formUrlEncodedContentType,
                ),
              ).map(
                (dio) => dio
                  ..interceptors.addAll(
                    [
                      const BaseUrlDioInterceptor(
                        'https://test.api.amadeus.com',
                      ),
                      LogInterceptor(),
                      RetryInterceptor(dio: dio),
                      AuthDioInterceptor(
                        context.read(),
                        context.read(),
                        dio,
                      ),
                    ],
                  ),
              );

              return CitiesSearchApi(dio);
            },
          ),
          Provider<AuthService>(
            create: (context) => AuthService(
              authTokenStorage: context.read(),
              amadeusTokenRefresher: context.read(),
            )..init(),
          ),
          Provider<WeatherApi>(
            create: (_) => WeatherApi(
              Dio().map(
                (dio) => dio
                  ..interceptors.addAll(
                    [RetryInterceptor(dio: dio), LogInterceptor()],
                  ),
              ),
            ),
          ),
          Provider<WeatherRepository>(
            create: (context) => WeatherRepository(context.read()),
          ),
          Provider<CitiesRepository>(
            create: (context) => CitiesRepository(context.read()),
          ),
          BlocProvider<WeatherScreenBloc>(
            create: (context) => WeatherScreenBloc(
              weatherRepository: context.read(),
              citiesRepository: context.read(),
            ),
          ),
        ],
        child: child,
      );
}

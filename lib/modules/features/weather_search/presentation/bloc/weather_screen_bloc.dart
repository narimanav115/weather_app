import 'dart:async';

import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/cities_repository.dart';
import '../../domain/weather_repository.dart';
import 'weather_screen_event.dart';
import 'weather_screen_state.dart';

class WeatherScreenBloc extends Bloc<WeatherScreenEvent, WeatherScreenState> {
  final WeatherRepository _weatherRepository;
  final CitiesRepository _citiesRepository;

  WeatherScreenBloc({
    WeatherScreenState initialState = const WeatherScreenState(),
    required WeatherRepository weatherRepository,
    required CitiesRepository citiesRepository,
  })  : _citiesRepository = citiesRepository,
        _weatherRepository = weatherRepository,
        super(initialState) {
    on<WeatherScreenEvent>(mapEvent);
  }

  Future<void> mapEvent(
    WeatherScreenEvent event,
    Emitter<WeatherScreenState> emit,
  ) =>
      event.map(
        search: (event) async {
          if (event.query.length < 3) {
            return emit(
              state.copyWith(
                cities: IList(const []),
                error:
                    state.selectedCity == null ? _citiesRepository.error : null,
              ),
            );
          }

          final result = await _citiesRepository.search(event.query);

          return emit(
            state.copyWith(
              cities: result?.cities ?? IList(const []),
              error:
                  state.selectedCity == null ? _citiesRepository.error : null,
            ),
          );
        },
        selectCity: (event) async {
          final city = event.city;
          if (city.longitude != null && city.latitude != null) {
            final weather = await _weatherRepository.getWeather(
              latitude: city.latitude!,
              longitude: city.longitude!,
            );

            if (weather != null) {
              emit(
                state.copyWith(
                  cities: IList(const []),
                  error: null,
                  selectedCity: city,
                  weather: weather,
                ),
              );

              return;
            }
            emit(
              state.copyWith(
                cities: IList(const []),
                error: _weatherRepository.error,
              ),
            );

            return;
          }
          emit(
            state.copyWith(
              cities: IList(const []),
              error: 'No weather data',
            ),
          );
        },
        clear: (_) async => emit(const WeatherScreenState()),
      );
}

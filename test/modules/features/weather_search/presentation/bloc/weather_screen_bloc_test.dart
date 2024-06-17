import 'package:bloc_test/bloc_test.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_test/modules/features/weather_search/domain/models/cities_list_model.dart';
import 'package:weather_test/modules/features/weather_search/domain/models/city_model.dart';
import 'package:weather_test/modules/features/weather_search/domain/models/weather_data_model.dart';
import 'package:weather_test/modules/features/weather_search/presentation/bloc/weather_screen_bloc.dart';
import 'package:weather_test/modules/features/weather_search/presentation/bloc/weather_screen_event.dart';
import 'package:weather_test/modules/features/weather_search/presentation/bloc/weather_screen_state.dart';

import '../../../../../mocks/cities_repository_mock.dart';
import '../../../../../mocks/weather_repository_mock.dart';

final _cities = CitiesListModel(
  cities: [
    const CityModel(
      name: 'Paris',
      country: 'FR',
      stateCode: 'FR',
      longitude: 39,
      latitude: 3.9,
    ),
    const CityModel(name: 'Parton', country: 'US', stateCode: 'USCA'),
  ].lock,
);
const _weather = WeatherDataModel(
  title: 'Sunny',
  icon: 'https://api.weather.com/10d.png',
  temperature: 30,
  minTemperature: 28,
  maxTemperature: 32,
);

void main() {
  group('$WeatherScreenBloc', () {
    late WeatherRepositoryMock weatherRepositoryMock;
    late CitiesRepositoryMock citiesRepositoryMock;

    setUp(() {
      weatherRepositoryMock = WeatherRepositoryMock();
      citiesRepositoryMock = CitiesRepositoryMock();
    });

    blocTest<WeatherScreenBloc, WeatherScreenState>(
      'successful flow',
      build: () {
        when(
          () => citiesRepositoryMock.search(any()),
        ).thenAnswer((_) => Future.value(_cities));

        when(
          () => weatherRepositoryMock.getWeather(
            latitude: any(named: 'latitude'),
            longitude: any(named: 'longitude'),
          ),
        ).thenAnswer((_) => Future.value(_weather));

        return WeatherScreenBloc(
          weatherRepository: weatherRepositoryMock,
          citiesRepository: citiesRepositoryMock,
        );
      },
      act: (bloc) {
        bloc
          ..add(const WeatherScreenEvent.search('PAR'))
          ..add(WeatherScreenEvent.selectCity(_cities.cities.first))
          ..add(const WeatherScreenEvent.clear())
          ..add(WeatherScreenEvent.selectCity(_cities.cities[1]));
      },
      expect: () => [
        WeatherScreenState(
          selectedCity: null,
          cities: _cities.cities,
          weather: null,
          error: null,
        ),
        WeatherScreenState(
          selectedCity: _cities.cities.first,
          cities: IList(const []),
          weather: _weather,
          error: null,
        ),
        WeatherScreenState(
          selectedCity: null,
          cities: IList(const []),
          weather: null,
          error: null,
        ),
        WeatherScreenState(
          selectedCity: null,
          cities: IList(const []),
          weather: null,
          error: 'No weather data',
        ),
      ],
    );

    blocTest<WeatherScreenBloc, WeatherScreenState>(
      'city fetch error',
      build: () {
        when(
          () => citiesRepositoryMock.search(any()),
        ).thenAnswer((_) => Future.value(null));
        when(() => citiesRepositoryMock.error).thenReturn(
          'SYSTEM ERROR HAS OCCURRED',
        );

        when(
          () => weatherRepositoryMock.getWeather(
            latitude: any(named: 'latitude'),
            longitude: any(named: 'longitude'),
          ),
        ).thenAnswer((_) => Future.value(null));
        when(() => weatherRepositoryMock.error).thenReturn('No data');
        return WeatherScreenBloc(
          weatherRepository: weatherRepositoryMock,
          citiesRepository: citiesRepositoryMock,
        );
      },
      act: (bloc) {
        bloc
          ..add(const WeatherScreenEvent.search('PAR'))
          ..add(WeatherScreenEvent.selectCity(_cities.cities.first));
      },
      expect: () => [
        WeatherScreenState(
          selectedCity: null,
          cities: IList(const []),
          weather: null,
          error: 'SYSTEM ERROR HAS OCCURRED',
        ),
        WeatherScreenState(
          selectedCity: null,
          cities: IList(const []),
          weather: null,
          error: 'No data',
        ),
      ],
    );
  });
}

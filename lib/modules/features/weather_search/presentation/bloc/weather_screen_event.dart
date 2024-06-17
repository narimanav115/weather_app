import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/city_model.dart';

part 'weather_screen_event.freezed.dart';

@freezed
sealed class WeatherScreenEvent with _$WeatherScreenEvent {
  const factory WeatherScreenEvent.search(String query) =
      _WeatherScreenEventSearch;

  const factory WeatherScreenEvent.selectCity(CityModel city) =
      _WeatherScreenEventSelectCity;

  const factory WeatherScreenEvent.clear() = _WeatherScreenEventClear;
}

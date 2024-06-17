import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/city_model.dart';
import '../../domain/models/weather_data_model.dart';

part 'weather_screen_state.freezed.dart';

@freezed
class WeatherScreenState with _$WeatherScreenState {
  const factory WeatherScreenState({
    @Default(null) CityModel? selectedCity,
    @Default(IListConst([])) IList<CityModel> cities,
    @Default(null) WeatherDataModel? weather,
    @Default(null) String? error,
  }) = _WeatherScreenState;
}

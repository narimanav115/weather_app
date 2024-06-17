import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_data_model.freezed.dart';

@freezed
class WeatherDataModel with _$WeatherDataModel {
  const factory WeatherDataModel({
    required String title,
    required String icon,
    required num temperature,
    required num minTemperature,
    required num maxTemperature,
  }) = _WeatherDataModel;
}

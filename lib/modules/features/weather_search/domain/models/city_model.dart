import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';

@freezed
class CityModel with _$CityModel {
  const factory CityModel({
    required String name,
    required String country,
    required String stateCode,
    num? longitude,
    num? latitude,
  }) = _CityModel;
}

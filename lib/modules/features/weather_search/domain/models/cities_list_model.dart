import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'city_model.dart';

part 'cities_list_model.freezed.dart';

@freezed
class CitiesListModel with _$CitiesListModel {
  const factory CitiesListModel({
    required IList<CityModel> cities,
  }) = _CitiesListModel;
}

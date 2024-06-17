import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/cities/address_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/cities/cities_list_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/cities/city_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/dto/cities/geo_code_dto.dart';
import 'package:weather_test/modules/features/weather_search/data/mappers/cities_list_data_mapper.dart';
import 'package:weather_test/modules/features/weather_search/domain/models/cities_list_model.dart';
import 'package:weather_test/modules/features/weather_search/domain/models/city_model.dart';

void main() {
  test('CitiesListDataMapper returns model from dto', () {
    const dto = CitiesListDto(
      data: [
        CityDto(
          name: 'Paris',
          address: AddressDto(countryCode: 'FR', stateCode: 'FR'),
          geoCode: GeoCodeDto(
            latitude: 49.01278,
            longitude: 2.55,
          ),
        ),
      ],
    );

    final model = CitiesListModel(
      cities: [
        const CityModel(
          name: 'Paris',
          country: 'FR',
          stateCode: 'FR',
          latitude: 49.01278,
          longitude: 2.55,
        ),
      ].lock,
    );

    expect(dto.toModel(), equals(model));
  });
}

import '../../domain/models/city_model.dart';
import '../dto/cities/city_dto.dart';

extension CityMapper on CityDto {
  CityModel toModel() => CityModel(
        name: name,
        country: address.countryCode,
        stateCode: address.stateCode ?? '',
        longitude: geoCode.longitude,
        latitude: geoCode.latitude,
      );
}

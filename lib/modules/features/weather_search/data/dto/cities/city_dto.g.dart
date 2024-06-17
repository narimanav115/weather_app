// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CityDto _$CityDtoFromJson(Map<String, dynamic> json) => CityDto(
      name: json['name'] as String,
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      geoCode: GeoCodeDto.fromJson(json['geoCode'] as Map<String, dynamic>),
    );

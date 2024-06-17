// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_code_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoCodeDto _$GeoCodeDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'GeoCodeDto',
      json,
      ($checkedConvert) {
        final val = GeoCodeDto(
          latitude: $checkedConvert('latitude', (v) => v as num?),
          longitude: $checkedConvert('longitude', (v) => v as num?),
        );
        return val;
      },
    );

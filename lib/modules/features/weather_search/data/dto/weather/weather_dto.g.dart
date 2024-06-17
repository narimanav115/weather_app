// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'WeatherDto',
      json,
      ($checkedConvert) {
        final val = WeatherDto(
          main: $checkedConvert('main', (v) => v as String),
          icon: $checkedConvert('icon', (v) => v as String),
        );
        return val;
      },
    );

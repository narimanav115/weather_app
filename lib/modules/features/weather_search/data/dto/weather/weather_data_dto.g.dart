// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherDataDto _$WeatherDataDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'WeatherDataDto',
      json,
      ($checkedConvert) {
        final val = WeatherDataDto(
          main: $checkedConvert('main',
              (v) => WeatherInfoDto.fromJson(v as Map<String, dynamic>)),
          weather: $checkedConvert(
              'weather',
              (v) => (v as List<dynamic>)
                  .map((e) => WeatherDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

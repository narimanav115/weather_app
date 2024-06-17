// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherInfoDto _$WeatherInfoDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'WeatherInfoDto',
      json,
      ($checkedConvert) {
        final val = WeatherInfoDto(
          temp: $checkedConvert('temp', (v) => v as num),
          tempMin: $checkedConvert('temp_min', (v) => v as num),
          tempMax: $checkedConvert('temp_max', (v) => v as num),
        );
        return val;
      },
      fieldKeyMap: const {'tempMin': 'temp_min', 'tempMax': 'temp_max'},
    );

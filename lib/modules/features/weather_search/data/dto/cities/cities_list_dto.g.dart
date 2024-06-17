// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CitiesListDto _$CitiesListDtoFromJson(Map<String, dynamic> json) =>
    CitiesListDto(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

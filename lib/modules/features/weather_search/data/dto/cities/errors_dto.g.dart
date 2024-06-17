// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'errors_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorsDto _$ErrorsDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ErrorsDto',
      json,
      ($checkedConvert) {
        final val = ErrorsDto(
          errors: $checkedConvert(
              'errors',
              (v) => (v as List<dynamic>)
                  .map((e) => ErrorDto.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorDto _$ErrorDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ErrorDto',
      json,
      ($checkedConvert) {
        final val = ErrorDto(
          status: $checkedConvert('status', (v) => (v as num).toInt()),
          code: $checkedConvert('code', (v) => (v as num).toInt()),
          title: $checkedConvert('title', (v) => v as String),
          detail: $checkedConvert('detail', (v) => v as String?),
        );
        return val;
      },
    );

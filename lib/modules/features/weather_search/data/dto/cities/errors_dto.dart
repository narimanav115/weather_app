import 'package:json_annotation/json_annotation.dart';

import 'error_dto.dart';

part 'errors_dto.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class ErrorsDto {
  final List<ErrorDto> errors;

  const ErrorsDto({
    required this.errors,
  });

  factory ErrorsDto.fromJson(Map<String, Object?> json) =>
      _$ErrorsDtoFromJson(json);
}

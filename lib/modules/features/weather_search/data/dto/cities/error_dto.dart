import 'package:json_annotation/json_annotation.dart';

part 'error_dto.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class ErrorDto {
  final int status;
  final int code;
  final String title;
  final String? detail;

  const ErrorDto({
    required this.status,
    required this.code,
    required this.title,
    this.detail,
  });

  factory ErrorDto.fromJson(Map<String, Object?> json) =>
      _$ErrorDtoFromJson(json);
}

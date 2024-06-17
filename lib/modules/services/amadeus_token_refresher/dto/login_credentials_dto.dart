import 'package:json_annotation/json_annotation.dart';

part 'login_credentials_dto.g.dart';

@JsonSerializable(createToJson: false, checked: true)
class LoginCredentialsDto {
  @JsonKey(name: 'token_type')
  final String type;
  @JsonKey(name: 'access_token')
  final String accessToken;

  const LoginCredentialsDto({
    required this.type,
    required this.accessToken,
  });

  factory LoginCredentialsDto.fromJson(Map<String, Object?> json) =>
      _$LoginCredentialsDtoFromJson(json);
}

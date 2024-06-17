// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_credentials_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginCredentialsDto _$LoginCredentialsDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LoginCredentialsDto',
      json,
      ($checkedConvert) {
        final val = LoginCredentialsDto(
          type: $checkedConvert('token_type', (v) => v as String),
          accessToken: $checkedConvert('access_token', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'type': 'token_type', 'accessToken': 'access_token'},
    );

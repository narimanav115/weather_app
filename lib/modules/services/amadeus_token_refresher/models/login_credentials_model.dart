import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_credentials_model.freezed.dart';

@freezed
class LoginCredentialsModel with _$LoginCredentialsModel {
  const factory LoginCredentialsModel({
    required String type,
    required String accessToken,
  }) = _LoginCredentialsModel;
}

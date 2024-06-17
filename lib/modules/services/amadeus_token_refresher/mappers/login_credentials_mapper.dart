import '../dto/login_credentials_dto.dart';
import '../models/login_credentials_model.dart';

extension LoginCredentialsMapper on LoginCredentialsDto {
  LoginCredentialsModel toModel() => LoginCredentialsModel(
        type: type,
        accessToken: accessToken,
      );
}

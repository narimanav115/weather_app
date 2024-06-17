import 'package:flutter_test/flutter_test.dart';
import 'package:weather_test/modules/services/amadeus_token_refresher/dto/login_credentials_dto.dart';
import 'package:weather_test/modules/services/amadeus_token_refresher/mappers/login_credentials_mapper.dart';
import 'package:weather_test/modules/services/amadeus_token_refresher/models/login_credentials_model.dart';

void main() {
  test('LoginCredentialsMapper returns model from dto', () {
    const dto = LoginCredentialsDto(
      accessToken: 'access token',
      type: 'Bearer',
    );

    const model = LoginCredentialsModel(
      accessToken: 'access token',
      type: 'Bearer',
    );

    expect(dto.toModel(), equals(model));
  });
}

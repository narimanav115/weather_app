import 'package:dio/dio.dart';

import '../auth_token_storage/models/auth_tokens.dart';
import 'dto/login_credentials_dto.dart';
import 'mappers/login_credentials_mapper.dart';

class AmadeusTokenRefresher {
  final Dio _client;

  const AmadeusTokenRefresher(this._client);

  Future<AuthTokens> refreshToken() async {
    final credentials = (await _fetchNewTokenFromServer()).toModel();

    return AuthTokens(
      accessToken: credentials.accessToken,
      accessTokenType: credentials.type,
    );
  }

  Future<LoginCredentialsDto> _fetchNewTokenFromServer() async {
    final response = await _client.post<Map<String, Object?>>(
      '/v1/security/oauth2/token',
      data: {
        'grant_type': 'client_credentials',
        'client_id': 'dyy3BqIWsBZPc8VEY1iiOX7ULI5qXjQo',
        'client_secret': 'VwStDYTl3wessA29',
      },
    );

    return LoginCredentialsDto.fromJson(response.data!);
  }
}

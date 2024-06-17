import 'amadeus_token_refresher/amadeus_token_refresher.dart';
import 'auth_token_storage/auth_token_storage.dart';

class AuthService {
  final AuthTokenStorage _authTokenStorage;
  final AmadeusTokenRefresher _amadeusTokenRefresher;

  const AuthService({
    required AuthTokenStorage authTokenStorage,
    required AmadeusTokenRefresher amadeusTokenRefresher,
  })  : _authTokenStorage = authTokenStorage,
        _amadeusTokenRefresher = amadeusTokenRefresher;

  Future<void> init() async {
    await _authTokenStorage.restoreTokens();
    final tokens = _authTokenStorage.tokens;
    if (tokens == null) {
      final newTokens = await _amadeusTokenRefresher.refreshToken();
      await _authTokenStorage.saveTokens(newTokens);
    }
  }
}

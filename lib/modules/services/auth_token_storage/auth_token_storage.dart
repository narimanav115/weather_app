import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'models/auth_tokens.dart';

const _accessTokenKey = 'KEY_TOKEN';
const _accessTokenTypeKey = 'KEY_TYPE';

class AuthTokenStorage {
  final FlutterSecureStorage _secureStorage;

  AuthTokens? _tokens;

  AuthTokenStorage(this._secureStorage);

  AuthTokens? get tokens => _tokens;

  Future<void> restoreTokens() async {
    final rawAccessToken = await _secureStorage.read(key: _accessTokenKey);
    final rawRefreshToken = await _secureStorage.read(key: _accessTokenTypeKey);

    if (rawAccessToken == null || rawRefreshToken == null) {
      await clearData();
    } else {
      _tokens = AuthTokens(
        accessToken: rawAccessToken,
        accessTokenType: rawRefreshToken,
      );
    }
  }

  Future<void> saveTokens(AuthTokens tokens) async {
    await _secureStorage.write(key: _accessTokenKey, value: tokens.accessToken);
    await _secureStorage.write(
      key: _accessTokenTypeKey,
      value: tokens.accessTokenType,
    );

    _tokens = tokens;
  }

  Future<void> clearData() async {
    _tokens = null;

    if (await _secureStorage.containsKey(key: _accessTokenKey)) {
      await _secureStorage.delete(key: _accessTokenKey);
    }

    if (await _secureStorage.containsKey(key: _accessTokenTypeKey)) {
      await _secureStorage.delete(key: _accessTokenTypeKey);
    }
  }
}

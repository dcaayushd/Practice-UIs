import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common/http_client.dart';
import '../entity/auth_info.dart';
import '../source/auth_data_source.dart';

final authRepository = AuthRepository(AuthRemoteDataSource(httpClint));

abstract class IAuthRepository {
  Future<void> login(String username, String password);
  Future<void> signUp(String username, String password);
  Future<void> refReshToken();
  Future<void> signOut();
}

class AuthRepository implements IAuthRepository {
  static final ValueNotifier<AuthInfo?> authChangeNotifier =
      ValueNotifier(null);
  final IAuthDataSource dataSource;
  AuthRepository(
    this.dataSource,
  );
  @override
  Future<void> login(String username, String password) async {
    final AuthInfo authInfo = await dataSource.login(username, password);
    _persisAuthTokens(authInfo);
    debugPrint(authInfo.accessToken);
  }

  @override
  Future<void> signUp(String username, String password) async {
    final AuthInfo authInfo = await dataSource.signUp(username, password);
    _persisAuthTokens(authInfo);
    debugPrint(authInfo.accessToken);
  }

  @override
  Future<void> refReshToken() async {
    if (authChangeNotifier.value != null) {
      final AuthInfo authInfo =
          await dataSource.refreshToken(authChangeNotifier.value!.refreshToken);
      debugPrint("refresh token is : ${authInfo.refreshToken}");
      _persisAuthTokens(authInfo);
    }
  }

  Future<void> _persisAuthTokens(AuthInfo authInfo) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("acces_token", authInfo.accessToken);
    sharedPreferences.setString("refresh_token", authInfo.refreshToken);
    loadAuthInfo();
  }

  Future<void> loadAuthInfo() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final String accessToken = sharedPreferences.getString("acces_token") ?? "";
    final String refreshToken =
        sharedPreferences.getString("refresh_token") ?? "";

    if (accessToken.isNotEmpty && refreshToken.isNotEmpty) {
      authChangeNotifier.value = AuthInfo(accessToken, refreshToken);
    }
  }

  @override
  Future<void> signOut() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
    authChangeNotifier.value = null;
  }
}

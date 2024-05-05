// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuthDataStruct extends BaseStruct {
  AuthDataStruct({
    String? accessToken,
    int? accessExpires,
    String? refreshToken,
    int? refreshExpires,
    int? userID,
    String? username,
    String? userRole,
    bool? loginStatus,
  })  : _accessToken = accessToken,
        _accessExpires = accessExpires,
        _refreshToken = refreshToken,
        _refreshExpires = refreshExpires,
        _userID = userID,
        _username = username,
        _userRole = userRole,
        _loginStatus = loginStatus;

  // "access_token" field.
  String? _accessToken;
  String get accessToken => _accessToken ?? '';
  set accessToken(String? val) => _accessToken = val;
  bool hasAccessToken() => _accessToken != null;

  // "access_expires" field.
  int? _accessExpires;
  int get accessExpires => _accessExpires ?? 0;
  set accessExpires(int? val) => _accessExpires = val;
  void incrementAccessExpires(int amount) =>
      _accessExpires = accessExpires + amount;
  bool hasAccessExpires() => _accessExpires != null;

  // "refresh_token" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;
  bool hasRefreshToken() => _refreshToken != null;

  // "refresh_expires" field.
  int? _refreshExpires;
  int get refreshExpires => _refreshExpires ?? 0;
  set refreshExpires(int? val) => _refreshExpires = val;
  void incrementRefreshExpires(int amount) =>
      _refreshExpires = refreshExpires + amount;
  bool hasRefreshExpires() => _refreshExpires != null;

  // "userID" field.
  int? _userID;
  int get userID => _userID ?? 0;
  set userID(int? val) => _userID = val;
  void incrementUserID(int amount) => _userID = userID + amount;
  bool hasUserID() => _userID != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;
  bool hasUsername() => _username != null;

  // "user_role" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  set userRole(String? val) => _userRole = val;
  bool hasUserRole() => _userRole != null;

  // "loginStatus" field.
  bool? _loginStatus;
  bool get loginStatus => _loginStatus ?? false;
  set loginStatus(bool? val) => _loginStatus = val;
  bool hasLoginStatus() => _loginStatus != null;

  static AuthDataStruct fromMap(Map<String, dynamic> data) => AuthDataStruct(
        accessToken: data['access_token'] as String?,
        accessExpires: castToType<int>(data['access_expires']),
        refreshToken: data['refresh_token'] as String?,
        refreshExpires: castToType<int>(data['refresh_expires']),
        userID: castToType<int>(data['userID']),
        username: data['username'] as String?,
        userRole: data['user_role'] as String?,
        loginStatus: data['loginStatus'] as bool?,
      );

  static AuthDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? AuthDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'access_token': _accessToken,
        'access_expires': _accessExpires,
        'refresh_token': _refreshToken,
        'refresh_expires': _refreshExpires,
        'userID': _userID,
        'username': _username,
        'user_role': _userRole,
        'loginStatus': _loginStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'access_token': serializeParam(
          _accessToken,
          ParamType.String,
        ),
        'access_expires': serializeParam(
          _accessExpires,
          ParamType.int,
        ),
        'refresh_token': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
        'refresh_expires': serializeParam(
          _refreshExpires,
          ParamType.int,
        ),
        'userID': serializeParam(
          _userID,
          ParamType.int,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'user_role': serializeParam(
          _userRole,
          ParamType.String,
        ),
        'loginStatus': serializeParam(
          _loginStatus,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AuthDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      AuthDataStruct(
        accessToken: deserializeParam(
          data['access_token'],
          ParamType.String,
          false,
        ),
        accessExpires: deserializeParam(
          data['access_expires'],
          ParamType.int,
          false,
        ),
        refreshToken: deserializeParam(
          data['refresh_token'],
          ParamType.String,
          false,
        ),
        refreshExpires: deserializeParam(
          data['refresh_expires'],
          ParamType.int,
          false,
        ),
        userID: deserializeParam(
          data['userID'],
          ParamType.int,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        userRole: deserializeParam(
          data['user_role'],
          ParamType.String,
          false,
        ),
        loginStatus: deserializeParam(
          data['loginStatus'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AuthDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AuthDataStruct &&
        accessToken == other.accessToken &&
        accessExpires == other.accessExpires &&
        refreshToken == other.refreshToken &&
        refreshExpires == other.refreshExpires &&
        userID == other.userID &&
        username == other.username &&
        userRole == other.userRole &&
        loginStatus == other.loginStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([
        accessToken,
        accessExpires,
        refreshToken,
        refreshExpires,
        userID,
        username,
        userRole,
        loginStatus
      ]);
}

AuthDataStruct createAuthDataStruct({
  String? accessToken,
  int? accessExpires,
  String? refreshToken,
  int? refreshExpires,
  int? userID,
  String? username,
  String? userRole,
  bool? loginStatus,
}) =>
    AuthDataStruct(
      accessToken: accessToken,
      accessExpires: accessExpires,
      refreshToken: refreshToken,
      refreshExpires: refreshExpires,
      userID: userID,
      username: username,
      userRole: userRole,
      loginStatus: loginStatus,
    );

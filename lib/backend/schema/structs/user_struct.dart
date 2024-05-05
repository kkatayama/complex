// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? userID,
    String? userRole,
    String? username,
    String? password,
    bool? loginStatus,
    int? isFavorite,
  })  : _userID = userID,
        _userRole = userRole,
        _username = username,
        _password = password,
        _loginStatus = loginStatus,
        _isFavorite = isFavorite;

  // "userID" field.
  int? _userID;
  int get userID => _userID ?? 0;
  set userID(int? val) => _userID = val;
  void incrementUserID(int amount) => _userID = userID + amount;
  bool hasUserID() => _userID != null;

  // "userRole" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  set userRole(String? val) => _userRole = val;
  bool hasUserRole() => _userRole != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;
  bool hasUsername() => _username != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  // "loginStatus" field.
  bool? _loginStatus;
  bool get loginStatus => _loginStatus ?? false;
  set loginStatus(bool? val) => _loginStatus = val;
  bool hasLoginStatus() => _loginStatus != null;

  // "isFavorite" field.
  int? _isFavorite;
  int get isFavorite => _isFavorite ?? 0;
  set isFavorite(int? val) => _isFavorite = val;
  void incrementIsFavorite(int amount) => _isFavorite = isFavorite + amount;
  bool hasIsFavorite() => _isFavorite != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        userID: castToType<int>(data['userID']),
        userRole: data['userRole'] as String?,
        username: data['username'] as String?,
        password: data['password'] as String?,
        loginStatus: data['loginStatus'] as bool?,
        isFavorite: castToType<int>(data['isFavorite']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userID': _userID,
        'userRole': _userRole,
        'username': _username,
        'password': _password,
        'loginStatus': _loginStatus,
        'isFavorite': _isFavorite,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userID': serializeParam(
          _userID,
          ParamType.int,
        ),
        'userRole': serializeParam(
          _userRole,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'loginStatus': serializeParam(
          _loginStatus,
          ParamType.bool,
        ),
        'isFavorite': serializeParam(
          _isFavorite,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        userID: deserializeParam(
          data['userID'],
          ParamType.int,
          false,
        ),
        userRole: deserializeParam(
          data['userRole'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        loginStatus: deserializeParam(
          data['loginStatus'],
          ParamType.bool,
          false,
        ),
        isFavorite: deserializeParam(
          data['isFavorite'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        userID == other.userID &&
        userRole == other.userRole &&
        username == other.username &&
        password == other.password &&
        loginStatus == other.loginStatus &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([userID, userRole, username, password, loginStatus, isFavorite]);
}

UserStruct createUserStruct({
  int? userID,
  String? userRole,
  String? username,
  String? password,
  bool? loginStatus,
  int? isFavorite,
}) =>
    UserStruct(
      userID: userID,
      userRole: userRole,
      username: username,
      password: password,
      loginStatus: loginStatus,
      isFavorite: isFavorite,
    );

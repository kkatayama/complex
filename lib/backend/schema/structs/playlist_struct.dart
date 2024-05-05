// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlaylistStruct extends BaseStruct {
  PlaylistStruct({
    int? playlistID,
    String? playlistName,
    int? playlistLength,
    String? creationDate,
    UserStruct? user,
  })  : _playlistID = playlistID,
        _playlistName = playlistName,
        _playlistLength = playlistLength,
        _creationDate = creationDate,
        _user = user;

  // "playlistID" field.
  int? _playlistID;
  int get playlistID => _playlistID ?? 0;
  set playlistID(int? val) => _playlistID = val;
  void incrementPlaylistID(int amount) => _playlistID = playlistID + amount;
  bool hasPlaylistID() => _playlistID != null;

  // "playlistName" field.
  String? _playlistName;
  String get playlistName => _playlistName ?? '';
  set playlistName(String? val) => _playlistName = val;
  bool hasPlaylistName() => _playlistName != null;

  // "playlistLength" field.
  int? _playlistLength;
  int get playlistLength => _playlistLength ?? 0;
  set playlistLength(int? val) => _playlistLength = val;
  void incrementPlaylistLength(int amount) =>
      _playlistLength = playlistLength + amount;
  bool hasPlaylistLength() => _playlistLength != null;

  // "creationDate" field.
  String? _creationDate;
  String get creationDate => _creationDate ?? '';
  set creationDate(String? val) => _creationDate = val;
  bool hasCreationDate() => _creationDate != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;
  void updateUser(Function(UserStruct) updateFn) =>
      updateFn(_user ??= UserStruct());
  bool hasUser() => _user != null;

  static PlaylistStruct fromMap(Map<String, dynamic> data) => PlaylistStruct(
        playlistID: castToType<int>(data['playlistID']),
        playlistName: data['playlistName'] as String?,
        playlistLength: castToType<int>(data['playlistLength']),
        creationDate: data['creationDate'] as String?,
        user: UserStruct.maybeFromMap(data['user']),
      );

  static PlaylistStruct? maybeFromMap(dynamic data) =>
      data is Map ? PlaylistStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'playlistID': _playlistID,
        'playlistName': _playlistName,
        'playlistLength': _playlistLength,
        'creationDate': _creationDate,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'playlistID': serializeParam(
          _playlistID,
          ParamType.int,
        ),
        'playlistName': serializeParam(
          _playlistName,
          ParamType.String,
        ),
        'playlistLength': serializeParam(
          _playlistLength,
          ParamType.int,
        ),
        'creationDate': serializeParam(
          _creationDate,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PlaylistStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlaylistStruct(
        playlistID: deserializeParam(
          data['playlistID'],
          ParamType.int,
          false,
        ),
        playlistName: deserializeParam(
          data['playlistName'],
          ParamType.String,
          false,
        ),
        playlistLength: deserializeParam(
          data['playlistLength'],
          ParamType.int,
          false,
        ),
        creationDate: deserializeParam(
          data['creationDate'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PlaylistStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlaylistStruct &&
        playlistID == other.playlistID &&
        playlistName == other.playlistName &&
        playlistLength == other.playlistLength &&
        creationDate == other.creationDate &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([playlistID, playlistName, playlistLength, creationDate, user]);
}

PlaylistStruct createPlaylistStruct({
  int? playlistID,
  String? playlistName,
  int? playlistLength,
  String? creationDate,
  UserStruct? user,
}) =>
    PlaylistStruct(
      playlistID: playlistID,
      playlistName: playlistName,
      playlistLength: playlistLength,
      creationDate: creationDate,
      user: user ?? UserStruct(),
    );

// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SuggestedArtistStruct extends BaseStruct {
  SuggestedArtistStruct({
    int? suggestedArtistID,
    int? artistID,
    String? artistName,
    String? artistPhotoURL,
    UserStruct? user,
    ArtistStruct? artist,
  })  : _suggestedArtistID = suggestedArtistID,
        _artistID = artistID,
        _artistName = artistName,
        _artistPhotoURL = artistPhotoURL,
        _user = user,
        _artist = artist;

  // "suggestedArtistID" field.
  int? _suggestedArtistID;
  int get suggestedArtistID => _suggestedArtistID ?? 0;
  set suggestedArtistID(int? val) => _suggestedArtistID = val;
  void incrementSuggestedArtistID(int amount) =>
      _suggestedArtistID = suggestedArtistID + amount;
  bool hasSuggestedArtistID() => _suggestedArtistID != null;

  // "artistID" field.
  int? _artistID;
  int get artistID => _artistID ?? 0;
  set artistID(int? val) => _artistID = val;
  void incrementArtistID(int amount) => _artistID = artistID + amount;
  bool hasArtistID() => _artistID != null;

  // "artistName" field.
  String? _artistName;
  String get artistName => _artistName ?? '';
  set artistName(String? val) => _artistName = val;
  bool hasArtistName() => _artistName != null;

  // "artistPhotoURL" field.
  String? _artistPhotoURL;
  String get artistPhotoURL => _artistPhotoURL ?? '';
  set artistPhotoURL(String? val) => _artistPhotoURL = val;
  bool hasArtistPhotoURL() => _artistPhotoURL != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;
  void updateUser(Function(UserStruct) updateFn) =>
      updateFn(_user ??= UserStruct());
  bool hasUser() => _user != null;

  // "artist" field.
  ArtistStruct? _artist;
  ArtistStruct get artist => _artist ?? ArtistStruct();
  set artist(ArtistStruct? val) => _artist = val;
  void updateArtist(Function(ArtistStruct) updateFn) =>
      updateFn(_artist ??= ArtistStruct());
  bool hasArtist() => _artist != null;

  static SuggestedArtistStruct fromMap(Map<String, dynamic> data) =>
      SuggestedArtistStruct(
        suggestedArtistID: castToType<int>(data['suggestedArtistID']),
        artistID: castToType<int>(data['artistID']),
        artistName: data['artistName'] as String?,
        artistPhotoURL: data['artistPhotoURL'] as String?,
        user: UserStruct.maybeFromMap(data['user']),
        artist: ArtistStruct.maybeFromMap(data['artist']),
      );

  static SuggestedArtistStruct? maybeFromMap(dynamic data) => data is Map
      ? SuggestedArtistStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'suggestedArtistID': _suggestedArtistID,
        'artistID': _artistID,
        'artistName': _artistName,
        'artistPhotoURL': _artistPhotoURL,
        'user': _user?.toMap(),
        'artist': _artist?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'suggestedArtistID': serializeParam(
          _suggestedArtistID,
          ParamType.int,
        ),
        'artistID': serializeParam(
          _artistID,
          ParamType.int,
        ),
        'artistName': serializeParam(
          _artistName,
          ParamType.String,
        ),
        'artistPhotoURL': serializeParam(
          _artistPhotoURL,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'artist': serializeParam(
          _artist,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SuggestedArtistStruct fromSerializableMap(Map<String, dynamic> data) =>
      SuggestedArtistStruct(
        suggestedArtistID: deserializeParam(
          data['suggestedArtistID'],
          ParamType.int,
          false,
        ),
        artistID: deserializeParam(
          data['artistID'],
          ParamType.int,
          false,
        ),
        artistName: deserializeParam(
          data['artistName'],
          ParamType.String,
          false,
        ),
        artistPhotoURL: deserializeParam(
          data['artistPhotoURL'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        artist: deserializeStructParam(
          data['artist'],
          ParamType.DataStruct,
          false,
          structBuilder: ArtistStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SuggestedArtistStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SuggestedArtistStruct &&
        suggestedArtistID == other.suggestedArtistID &&
        artistID == other.artistID &&
        artistName == other.artistName &&
        artistPhotoURL == other.artistPhotoURL &&
        user == other.user &&
        artist == other.artist;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [suggestedArtistID, artistID, artistName, artistPhotoURL, user, artist]);
}

SuggestedArtistStruct createSuggestedArtistStruct({
  int? suggestedArtistID,
  int? artistID,
  String? artistName,
  String? artistPhotoURL,
  UserStruct? user,
  ArtistStruct? artist,
}) =>
    SuggestedArtistStruct(
      suggestedArtistID: suggestedArtistID,
      artistID: artistID,
      artistName: artistName,
      artistPhotoURL: artistPhotoURL,
      user: user ?? UserStruct(),
      artist: artist ?? ArtistStruct(),
    );

// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoriteStruct extends BaseStruct {
  FavoriteStruct({
    int? favoriteID,
    String? addDate,
    int? trackID,
    String? trackName,
    int? trackNumber,
    String? trackURL,
    String? recordedDate,
    String? duration,
    UserStruct? user,
    ArtistStruct? artist,
    AlbumStruct? album,
  })  : _favoriteID = favoriteID,
        _addDate = addDate,
        _trackID = trackID,
        _trackName = trackName,
        _trackNumber = trackNumber,
        _trackURL = trackURL,
        _recordedDate = recordedDate,
        _duration = duration,
        _user = user,
        _artist = artist,
        _album = album;

  // "favoriteID" field.
  int? _favoriteID;
  int get favoriteID => _favoriteID ?? 0;
  set favoriteID(int? val) => _favoriteID = val;
  void incrementFavoriteID(int amount) => _favoriteID = favoriteID + amount;
  bool hasFavoriteID() => _favoriteID != null;

  // "addDate" field.
  String? _addDate;
  String get addDate => _addDate ?? '';
  set addDate(String? val) => _addDate = val;
  bool hasAddDate() => _addDate != null;

  // "trackID" field.
  int? _trackID;
  int get trackID => _trackID ?? 0;
  set trackID(int? val) => _trackID = val;
  void incrementTrackID(int amount) => _trackID = trackID + amount;
  bool hasTrackID() => _trackID != null;

  // "trackName" field.
  String? _trackName;
  String get trackName => _trackName ?? '';
  set trackName(String? val) => _trackName = val;
  bool hasTrackName() => _trackName != null;

  // "trackNumber" field.
  int? _trackNumber;
  int get trackNumber => _trackNumber ?? 0;
  set trackNumber(int? val) => _trackNumber = val;
  void incrementTrackNumber(int amount) => _trackNumber = trackNumber + amount;
  bool hasTrackNumber() => _trackNumber != null;

  // "trackURL" field.
  String? _trackURL;
  String get trackURL => _trackURL ?? '';
  set trackURL(String? val) => _trackURL = val;
  bool hasTrackURL() => _trackURL != null;

  // "recordedDate" field.
  String? _recordedDate;
  String get recordedDate => _recordedDate ?? '';
  set recordedDate(String? val) => _recordedDate = val;
  bool hasRecordedDate() => _recordedDate != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  set duration(String? val) => _duration = val;
  bool hasDuration() => _duration != null;

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

  // "album" field.
  AlbumStruct? _album;
  AlbumStruct get album => _album ?? AlbumStruct();
  set album(AlbumStruct? val) => _album = val;
  void updateAlbum(Function(AlbumStruct) updateFn) =>
      updateFn(_album ??= AlbumStruct());
  bool hasAlbum() => _album != null;

  static FavoriteStruct fromMap(Map<String, dynamic> data) => FavoriteStruct(
        favoriteID: castToType<int>(data['favoriteID']),
        addDate: data['addDate'] as String?,
        trackID: castToType<int>(data['trackID']),
        trackName: data['trackName'] as String?,
        trackNumber: castToType<int>(data['trackNumber']),
        trackURL: data['trackURL'] as String?,
        recordedDate: data['recordedDate'] as String?,
        duration: data['duration'] as String?,
        user: UserStruct.maybeFromMap(data['user']),
        artist: ArtistStruct.maybeFromMap(data['artist']),
        album: AlbumStruct.maybeFromMap(data['album']),
      );

  static FavoriteStruct? maybeFromMap(dynamic data) =>
      data is Map ? FavoriteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'favoriteID': _favoriteID,
        'addDate': _addDate,
        'trackID': _trackID,
        'trackName': _trackName,
        'trackNumber': _trackNumber,
        'trackURL': _trackURL,
        'recordedDate': _recordedDate,
        'duration': _duration,
        'user': _user?.toMap(),
        'artist': _artist?.toMap(),
        'album': _album?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'favoriteID': serializeParam(
          _favoriteID,
          ParamType.int,
        ),
        'addDate': serializeParam(
          _addDate,
          ParamType.String,
        ),
        'trackID': serializeParam(
          _trackID,
          ParamType.int,
        ),
        'trackName': serializeParam(
          _trackName,
          ParamType.String,
        ),
        'trackNumber': serializeParam(
          _trackNumber,
          ParamType.int,
        ),
        'trackURL': serializeParam(
          _trackURL,
          ParamType.String,
        ),
        'recordedDate': serializeParam(
          _recordedDate,
          ParamType.String,
        ),
        'duration': serializeParam(
          _duration,
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
        'album': serializeParam(
          _album,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static FavoriteStruct fromSerializableMap(Map<String, dynamic> data) =>
      FavoriteStruct(
        favoriteID: deserializeParam(
          data['favoriteID'],
          ParamType.int,
          false,
        ),
        addDate: deserializeParam(
          data['addDate'],
          ParamType.String,
          false,
        ),
        trackID: deserializeParam(
          data['trackID'],
          ParamType.int,
          false,
        ),
        trackName: deserializeParam(
          data['trackName'],
          ParamType.String,
          false,
        ),
        trackNumber: deserializeParam(
          data['trackNumber'],
          ParamType.int,
          false,
        ),
        trackURL: deserializeParam(
          data['trackURL'],
          ParamType.String,
          false,
        ),
        recordedDate: deserializeParam(
          data['recordedDate'],
          ParamType.String,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
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
        album: deserializeStructParam(
          data['album'],
          ParamType.DataStruct,
          false,
          structBuilder: AlbumStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'FavoriteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FavoriteStruct &&
        favoriteID == other.favoriteID &&
        addDate == other.addDate &&
        trackID == other.trackID &&
        trackName == other.trackName &&
        trackNumber == other.trackNumber &&
        trackURL == other.trackURL &&
        recordedDate == other.recordedDate &&
        duration == other.duration &&
        user == other.user &&
        artist == other.artist &&
        album == other.album;
  }

  @override
  int get hashCode => const ListEquality().hash([
        favoriteID,
        addDate,
        trackID,
        trackName,
        trackNumber,
        trackURL,
        recordedDate,
        duration,
        user,
        artist,
        album
      ]);
}

FavoriteStruct createFavoriteStruct({
  int? favoriteID,
  String? addDate,
  int? trackID,
  String? trackName,
  int? trackNumber,
  String? trackURL,
  String? recordedDate,
  String? duration,
  UserStruct? user,
  ArtistStruct? artist,
  AlbumStruct? album,
}) =>
    FavoriteStruct(
      favoriteID: favoriteID,
      addDate: addDate,
      trackID: trackID,
      trackName: trackName,
      trackNumber: trackNumber,
      trackURL: trackURL,
      recordedDate: recordedDate,
      duration: duration,
      user: user ?? UserStruct(),
      artist: artist ?? ArtistStruct(),
      album: album ?? AlbumStruct(),
    );

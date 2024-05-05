// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SuggestedAlbumStruct extends BaseStruct {
  SuggestedAlbumStruct({
    int? suggestedAlbumID,
    int? albumID,
    String? albumName,
    int? numSongs,
    int? year,
    String? albumCoverURL,
    UserStruct? user,
    AlbumStruct? album,
    ArtistStruct? artist,
  })  : _suggestedAlbumID = suggestedAlbumID,
        _albumID = albumID,
        _albumName = albumName,
        _numSongs = numSongs,
        _year = year,
        _albumCoverURL = albumCoverURL,
        _user = user,
        _album = album,
        _artist = artist;

  // "suggestedAlbumID" field.
  int? _suggestedAlbumID;
  int get suggestedAlbumID => _suggestedAlbumID ?? 0;
  set suggestedAlbumID(int? val) => _suggestedAlbumID = val;
  void incrementSuggestedAlbumID(int amount) =>
      _suggestedAlbumID = suggestedAlbumID + amount;
  bool hasSuggestedAlbumID() => _suggestedAlbumID != null;

  // "albumID" field.
  int? _albumID;
  int get albumID => _albumID ?? 0;
  set albumID(int? val) => _albumID = val;
  void incrementAlbumID(int amount) => _albumID = albumID + amount;
  bool hasAlbumID() => _albumID != null;

  // "albumName" field.
  String? _albumName;
  String get albumName => _albumName ?? '';
  set albumName(String? val) => _albumName = val;
  bool hasAlbumName() => _albumName != null;

  // "numSongs" field.
  int? _numSongs;
  int get numSongs => _numSongs ?? 0;
  set numSongs(int? val) => _numSongs = val;
  void incrementNumSongs(int amount) => _numSongs = numSongs + amount;
  bool hasNumSongs() => _numSongs != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  set year(int? val) => _year = val;
  void incrementYear(int amount) => _year = year + amount;
  bool hasYear() => _year != null;

  // "albumCoverURL" field.
  String? _albumCoverURL;
  String get albumCoverURL => _albumCoverURL ?? '';
  set albumCoverURL(String? val) => _albumCoverURL = val;
  bool hasAlbumCoverURL() => _albumCoverURL != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;
  void updateUser(Function(UserStruct) updateFn) =>
      updateFn(_user ??= UserStruct());
  bool hasUser() => _user != null;

  // "album" field.
  AlbumStruct? _album;
  AlbumStruct get album => _album ?? AlbumStruct();
  set album(AlbumStruct? val) => _album = val;
  void updateAlbum(Function(AlbumStruct) updateFn) =>
      updateFn(_album ??= AlbumStruct());
  bool hasAlbum() => _album != null;

  // "artist" field.
  ArtistStruct? _artist;
  ArtistStruct get artist => _artist ?? ArtistStruct();
  set artist(ArtistStruct? val) => _artist = val;
  void updateArtist(Function(ArtistStruct) updateFn) =>
      updateFn(_artist ??= ArtistStruct());
  bool hasArtist() => _artist != null;

  static SuggestedAlbumStruct fromMap(Map<String, dynamic> data) =>
      SuggestedAlbumStruct(
        suggestedAlbumID: castToType<int>(data['suggestedAlbumID']),
        albumID: castToType<int>(data['albumID']),
        albumName: data['albumName'] as String?,
        numSongs: castToType<int>(data['numSongs']),
        year: castToType<int>(data['year']),
        albumCoverURL: data['albumCoverURL'] as String?,
        user: UserStruct.maybeFromMap(data['user']),
        album: AlbumStruct.maybeFromMap(data['album']),
        artist: ArtistStruct.maybeFromMap(data['artist']),
      );

  static SuggestedAlbumStruct? maybeFromMap(dynamic data) => data is Map
      ? SuggestedAlbumStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'suggestedAlbumID': _suggestedAlbumID,
        'albumID': _albumID,
        'albumName': _albumName,
        'numSongs': _numSongs,
        'year': _year,
        'albumCoverURL': _albumCoverURL,
        'user': _user?.toMap(),
        'album': _album?.toMap(),
        'artist': _artist?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'suggestedAlbumID': serializeParam(
          _suggestedAlbumID,
          ParamType.int,
        ),
        'albumID': serializeParam(
          _albumID,
          ParamType.int,
        ),
        'albumName': serializeParam(
          _albumName,
          ParamType.String,
        ),
        'numSongs': serializeParam(
          _numSongs,
          ParamType.int,
        ),
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
        'albumCoverURL': serializeParam(
          _albumCoverURL,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
        'album': serializeParam(
          _album,
          ParamType.DataStruct,
        ),
        'artist': serializeParam(
          _artist,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SuggestedAlbumStruct fromSerializableMap(Map<String, dynamic> data) =>
      SuggestedAlbumStruct(
        suggestedAlbumID: deserializeParam(
          data['suggestedAlbumID'],
          ParamType.int,
          false,
        ),
        albumID: deserializeParam(
          data['albumID'],
          ParamType.int,
          false,
        ),
        albumName: deserializeParam(
          data['albumName'],
          ParamType.String,
          false,
        ),
        numSongs: deserializeParam(
          data['numSongs'],
          ParamType.int,
          false,
        ),
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
        albumCoverURL: deserializeParam(
          data['albumCoverURL'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserStruct.fromSerializableMap,
        ),
        album: deserializeStructParam(
          data['album'],
          ParamType.DataStruct,
          false,
          structBuilder: AlbumStruct.fromSerializableMap,
        ),
        artist: deserializeStructParam(
          data['artist'],
          ParamType.DataStruct,
          false,
          structBuilder: ArtistStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SuggestedAlbumStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SuggestedAlbumStruct &&
        suggestedAlbumID == other.suggestedAlbumID &&
        albumID == other.albumID &&
        albumName == other.albumName &&
        numSongs == other.numSongs &&
        year == other.year &&
        albumCoverURL == other.albumCoverURL &&
        user == other.user &&
        album == other.album &&
        artist == other.artist;
  }

  @override
  int get hashCode => const ListEquality().hash([
        suggestedAlbumID,
        albumID,
        albumName,
        numSongs,
        year,
        albumCoverURL,
        user,
        album,
        artist
      ]);
}

SuggestedAlbumStruct createSuggestedAlbumStruct({
  int? suggestedAlbumID,
  int? albumID,
  String? albumName,
  int? numSongs,
  int? year,
  String? albumCoverURL,
  UserStruct? user,
  AlbumStruct? album,
  ArtistStruct? artist,
}) =>
    SuggestedAlbumStruct(
      suggestedAlbumID: suggestedAlbumID,
      albumID: albumID,
      albumName: albumName,
      numSongs: numSongs,
      year: year,
      albumCoverURL: albumCoverURL,
      user: user ?? UserStruct(),
      album: album ?? AlbumStruct(),
      artist: artist ?? ArtistStruct(),
    );

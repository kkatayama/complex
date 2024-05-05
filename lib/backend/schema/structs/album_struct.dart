// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlbumStruct extends BaseStruct {
  AlbumStruct({
    int? albumID,
    String? albumName,
    int? numSongs,
    int? year,
    String? albumCoverURL,
    ArtistStruct? artist,
    List<TrackStruct>? tracks,
  })  : _albumID = albumID,
        _albumName = albumName,
        _numSongs = numSongs,
        _year = year,
        _albumCoverURL = albumCoverURL,
        _artist = artist,
        _tracks = tracks;

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

  // "artist" field.
  ArtistStruct? _artist;
  ArtistStruct get artist => _artist ?? ArtistStruct();
  set artist(ArtistStruct? val) => _artist = val;
  void updateArtist(Function(ArtistStruct) updateFn) =>
      updateFn(_artist ??= ArtistStruct());
  bool hasArtist() => _artist != null;

  // "tracks" field.
  List<TrackStruct>? _tracks;
  List<TrackStruct> get tracks => _tracks ?? const [];
  set tracks(List<TrackStruct>? val) => _tracks = val;
  void updateTracks(Function(List<TrackStruct>) updateFn) =>
      updateFn(_tracks ??= []);
  bool hasTracks() => _tracks != null;

  static AlbumStruct fromMap(Map<String, dynamic> data) => AlbumStruct(
        albumID: castToType<int>(data['albumID']),
        albumName: data['albumName'] as String?,
        numSongs: castToType<int>(data['numSongs']),
        year: castToType<int>(data['year']),
        albumCoverURL: data['albumCoverURL'] as String?,
        artist: ArtistStruct.maybeFromMap(data['artist']),
        tracks: getStructList(
          data['tracks'],
          TrackStruct.fromMap,
        ),
      );

  static AlbumStruct? maybeFromMap(dynamic data) =>
      data is Map ? AlbumStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'albumID': _albumID,
        'albumName': _albumName,
        'numSongs': _numSongs,
        'year': _year,
        'albumCoverURL': _albumCoverURL,
        'artist': _artist?.toMap(),
        'tracks': _tracks?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'artist': serializeParam(
          _artist,
          ParamType.DataStruct,
        ),
        'tracks': serializeParam(
          _tracks,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static AlbumStruct fromSerializableMap(Map<String, dynamic> data) =>
      AlbumStruct(
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
        artist: deserializeStructParam(
          data['artist'],
          ParamType.DataStruct,
          false,
          structBuilder: ArtistStruct.fromSerializableMap,
        ),
        tracks: deserializeStructParam<TrackStruct>(
          data['tracks'],
          ParamType.DataStruct,
          true,
          structBuilder: TrackStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AlbumStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AlbumStruct &&
        albumID == other.albumID &&
        albumName == other.albumName &&
        numSongs == other.numSongs &&
        year == other.year &&
        albumCoverURL == other.albumCoverURL &&
        artist == other.artist &&
        listEquality.equals(tracks, other.tracks);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [albumID, albumName, numSongs, year, albumCoverURL, artist, tracks]);
}

AlbumStruct createAlbumStruct({
  int? albumID,
  String? albumName,
  int? numSongs,
  int? year,
  String? albumCoverURL,
  ArtistStruct? artist,
}) =>
    AlbumStruct(
      albumID: albumID,
      albumName: albumName,
      numSongs: numSongs,
      year: year,
      albumCoverURL: albumCoverURL,
      artist: artist ?? ArtistStruct(),
    );

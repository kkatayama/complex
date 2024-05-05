// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackStruct extends BaseStruct {
  TrackStruct({
    int? trackID,
    String? trackName,
    int? trackNumber,
    String? trackURL,
    String? genre,
    String? recordedDate,
    String? duration,
    ArtistStruct? artist,
    AlbumStruct? album,
    int? isFavorite,
  })  : _trackID = trackID,
        _trackName = trackName,
        _trackNumber = trackNumber,
        _trackURL = trackURL,
        _genre = genre,
        _recordedDate = recordedDate,
        _duration = duration,
        _artist = artist,
        _album = album,
        _isFavorite = isFavorite;

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

  // "genre" field.
  String? _genre;
  String get genre => _genre ?? '';
  set genre(String? val) => _genre = val;
  bool hasGenre() => _genre != null;

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

  // "isFavorite" field.
  int? _isFavorite;
  int get isFavorite => _isFavorite ?? 0;
  set isFavorite(int? val) => _isFavorite = val;
  void incrementIsFavorite(int amount) => _isFavorite = isFavorite + amount;
  bool hasIsFavorite() => _isFavorite != null;

  static TrackStruct fromMap(Map<String, dynamic> data) => TrackStruct(
        trackID: castToType<int>(data['trackID']),
        trackName: data['trackName'] as String?,
        trackNumber: castToType<int>(data['trackNumber']),
        trackURL: data['trackURL'] as String?,
        genre: data['genre'] as String?,
        recordedDate: data['recordedDate'] as String?,
        duration: data['duration'] as String?,
        artist: ArtistStruct.maybeFromMap(data['artist']),
        album: AlbumStruct.maybeFromMap(data['album']),
        isFavorite: castToType<int>(data['isFavorite']),
      );

  static TrackStruct? maybeFromMap(dynamic data) =>
      data is Map ? TrackStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'trackID': _trackID,
        'trackName': _trackName,
        'trackNumber': _trackNumber,
        'trackURL': _trackURL,
        'genre': _genre,
        'recordedDate': _recordedDate,
        'duration': _duration,
        'artist': _artist?.toMap(),
        'album': _album?.toMap(),
        'isFavorite': _isFavorite,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
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
        'genre': serializeParam(
          _genre,
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
        'artist': serializeParam(
          _artist,
          ParamType.DataStruct,
        ),
        'album': serializeParam(
          _album,
          ParamType.DataStruct,
        ),
        'isFavorite': serializeParam(
          _isFavorite,
          ParamType.int,
        ),
      }.withoutNulls;

  static TrackStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrackStruct(
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
        genre: deserializeParam(
          data['genre'],
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
        isFavorite: deserializeParam(
          data['isFavorite'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TrackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrackStruct &&
        trackID == other.trackID &&
        trackName == other.trackName &&
        trackNumber == other.trackNumber &&
        trackURL == other.trackURL &&
        genre == other.genre &&
        recordedDate == other.recordedDate &&
        duration == other.duration &&
        artist == other.artist &&
        album == other.album &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode => const ListEquality().hash([
        trackID,
        trackName,
        trackNumber,
        trackURL,
        genre,
        recordedDate,
        duration,
        artist,
        album,
        isFavorite
      ]);
}

TrackStruct createTrackStruct({
  int? trackID,
  String? trackName,
  int? trackNumber,
  String? trackURL,
  String? genre,
  String? recordedDate,
  String? duration,
  ArtistStruct? artist,
  AlbumStruct? album,
  int? isFavorite,
}) =>
    TrackStruct(
      trackID: trackID,
      trackName: trackName,
      trackNumber: trackNumber,
      trackURL: trackURL,
      genre: genre,
      recordedDate: recordedDate,
      duration: duration,
      artist: artist ?? ArtistStruct(),
      album: album ?? AlbumStruct(),
      isFavorite: isFavorite,
    );

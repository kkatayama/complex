// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackInfoStruct extends BaseStruct {
  TrackInfoStruct({
    String? artistName,
    String? albumName,
    String? albumCoverURL,
    String? songTitle,
  })  : _artistName = artistName,
        _albumName = albumName,
        _albumCoverURL = albumCoverURL,
        _songTitle = songTitle;

  // "artistName" field.
  String? _artistName;
  String get artistName => _artistName ?? '';
  set artistName(String? val) => _artistName = val;
  bool hasArtistName() => _artistName != null;

  // "albumName" field.
  String? _albumName;
  String get albumName => _albumName ?? '';
  set albumName(String? val) => _albumName = val;
  bool hasAlbumName() => _albumName != null;

  // "albumCoverURL" field.
  String? _albumCoverURL;
  String get albumCoverURL => _albumCoverURL ?? '';
  set albumCoverURL(String? val) => _albumCoverURL = val;
  bool hasAlbumCoverURL() => _albumCoverURL != null;

  // "songTitle" field.
  String? _songTitle;
  String get songTitle => _songTitle ?? '';
  set songTitle(String? val) => _songTitle = val;
  bool hasSongTitle() => _songTitle != null;

  static TrackInfoStruct fromMap(Map<String, dynamic> data) => TrackInfoStruct(
        artistName: data['artistName'] as String?,
        albumName: data['albumName'] as String?,
        albumCoverURL: data['albumCoverURL'] as String?,
        songTitle: data['songTitle'] as String?,
      );

  static TrackInfoStruct? maybeFromMap(dynamic data) => data is Map
      ? TrackInfoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'artistName': _artistName,
        'albumName': _albumName,
        'albumCoverURL': _albumCoverURL,
        'songTitle': _songTitle,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'artistName': serializeParam(
          _artistName,
          ParamType.String,
        ),
        'albumName': serializeParam(
          _albumName,
          ParamType.String,
        ),
        'albumCoverURL': serializeParam(
          _albumCoverURL,
          ParamType.String,
        ),
        'songTitle': serializeParam(
          _songTitle,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrackInfoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrackInfoStruct(
        artistName: deserializeParam(
          data['artistName'],
          ParamType.String,
          false,
        ),
        albumName: deserializeParam(
          data['albumName'],
          ParamType.String,
          false,
        ),
        albumCoverURL: deserializeParam(
          data['albumCoverURL'],
          ParamType.String,
          false,
        ),
        songTitle: deserializeParam(
          data['songTitle'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrackInfoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrackInfoStruct &&
        artistName == other.artistName &&
        albumName == other.albumName &&
        albumCoverURL == other.albumCoverURL &&
        songTitle == other.songTitle;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([artistName, albumName, albumCoverURL, songTitle]);
}

TrackInfoStruct createTrackInfoStruct({
  String? artistName,
  String? albumName,
  String? albumCoverURL,
  String? songTitle,
}) =>
    TrackInfoStruct(
      artistName: artistName,
      albumName: albumName,
      albumCoverURL: albumCoverURL,
      songTitle: songTitle,
    );

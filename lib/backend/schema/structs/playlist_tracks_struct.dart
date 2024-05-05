// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlaylistTracksStruct extends BaseStruct {
  PlaylistTracksStruct({
    List<PlaylistTrackStruct>? playlistTracks,
  }) : _playlistTracks = playlistTracks;

  // "playlistTracks" field.
  List<PlaylistTrackStruct>? _playlistTracks;
  List<PlaylistTrackStruct> get playlistTracks => _playlistTracks ?? const [];
  set playlistTracks(List<PlaylistTrackStruct>? val) => _playlistTracks = val;
  void updatePlaylistTracks(Function(List<PlaylistTrackStruct>) updateFn) =>
      updateFn(_playlistTracks ??= []);
  bool hasPlaylistTracks() => _playlistTracks != null;

  static PlaylistTracksStruct fromMap(Map<String, dynamic> data) =>
      PlaylistTracksStruct(
        playlistTracks: getStructList(
          data['playlistTracks'],
          PlaylistTrackStruct.fromMap,
        ),
      );

  static PlaylistTracksStruct? maybeFromMap(dynamic data) => data is Map
      ? PlaylistTracksStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'playlistTracks': _playlistTracks?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'playlistTracks': serializeParam(
          _playlistTracks,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static PlaylistTracksStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlaylistTracksStruct(
        playlistTracks: deserializeStructParam<PlaylistTrackStruct>(
          data['playlistTracks'],
          ParamType.DataStruct,
          true,
          structBuilder: PlaylistTrackStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PlaylistTracksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PlaylistTracksStruct &&
        listEquality.equals(playlistTracks, other.playlistTracks);
  }

  @override
  int get hashCode => const ListEquality().hash([playlistTracks]);
}

PlaylistTracksStruct createPlaylistTracksStruct() => PlaylistTracksStruct();

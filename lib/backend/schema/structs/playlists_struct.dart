// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlaylistsStruct extends BaseStruct {
  PlaylistsStruct({
    List<PlaylistStruct>? playlists,
  }) : _playlists = playlists;

  // "playlists" field.
  List<PlaylistStruct>? _playlists;
  List<PlaylistStruct> get playlists => _playlists ?? const [];
  set playlists(List<PlaylistStruct>? val) => _playlists = val;
  void updatePlaylists(Function(List<PlaylistStruct>) updateFn) =>
      updateFn(_playlists ??= []);
  bool hasPlaylists() => _playlists != null;

  static PlaylistsStruct fromMap(Map<String, dynamic> data) => PlaylistsStruct(
        playlists: getStructList(
          data['playlists'],
          PlaylistStruct.fromMap,
        ),
      );

  static PlaylistsStruct? maybeFromMap(dynamic data) => data is Map
      ? PlaylistsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'playlists': _playlists?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'playlists': serializeParam(
          _playlists,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static PlaylistsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlaylistsStruct(
        playlists: deserializeStructParam<PlaylistStruct>(
          data['playlists'],
          ParamType.DataStruct,
          true,
          structBuilder: PlaylistStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PlaylistsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PlaylistsStruct &&
        listEquality.equals(playlists, other.playlists);
  }

  @override
  int get hashCode => const ListEquality().hash([playlists]);
}

PlaylistsStruct createPlaylistsStruct() => PlaylistsStruct();

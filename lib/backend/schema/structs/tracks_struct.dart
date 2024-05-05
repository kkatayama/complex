// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TracksStruct extends BaseStruct {
  TracksStruct({
    List<TrackStruct>? tracks,
  }) : _tracks = tracks;

  // "tracks" field.
  List<TrackStruct>? _tracks;
  List<TrackStruct> get tracks => _tracks ?? const [];
  set tracks(List<TrackStruct>? val) => _tracks = val;
  void updateTracks(Function(List<TrackStruct>) updateFn) =>
      updateFn(_tracks ??= []);
  bool hasTracks() => _tracks != null;

  static TracksStruct fromMap(Map<String, dynamic> data) => TracksStruct(
        tracks: getStructList(
          data['tracks'],
          TrackStruct.fromMap,
        ),
      );

  static TracksStruct? maybeFromMap(dynamic data) =>
      data is Map ? TracksStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tracks': _tracks?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tracks': serializeParam(
          _tracks,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static TracksStruct fromSerializableMap(Map<String, dynamic> data) =>
      TracksStruct(
        tracks: deserializeStructParam<TrackStruct>(
          data['tracks'],
          ParamType.DataStruct,
          true,
          structBuilder: TrackStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TracksStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TracksStruct && listEquality.equals(tracks, other.tracks);
  }

  @override
  int get hashCode => const ListEquality().hash([tracks]);
}

TracksStruct createTracksStruct() => TracksStruct();

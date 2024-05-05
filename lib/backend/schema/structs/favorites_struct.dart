// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FavoritesStruct extends BaseStruct {
  FavoritesStruct({
    List<FavoriteStruct>? tracks,
  }) : _tracks = tracks;

  // "tracks" field.
  List<FavoriteStruct>? _tracks;
  List<FavoriteStruct> get tracks => _tracks ?? const [];
  set tracks(List<FavoriteStruct>? val) => _tracks = val;
  void updateTracks(Function(List<FavoriteStruct>) updateFn) =>
      updateFn(_tracks ??= []);
  bool hasTracks() => _tracks != null;

  static FavoritesStruct fromMap(Map<String, dynamic> data) => FavoritesStruct(
        tracks: getStructList(
          data['tracks'],
          FavoriteStruct.fromMap,
        ),
      );

  static FavoritesStruct? maybeFromMap(dynamic data) => data is Map
      ? FavoritesStruct.fromMap(data.cast<String, dynamic>())
      : null;

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

  static FavoritesStruct fromSerializableMap(Map<String, dynamic> data) =>
      FavoritesStruct(
        tracks: deserializeStructParam<FavoriteStruct>(
          data['tracks'],
          ParamType.DataStruct,
          true,
          structBuilder: FavoriteStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'FavoritesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FavoritesStruct &&
        listEquality.equals(tracks, other.tracks);
  }

  @override
  int get hashCode => const ListEquality().hash([tracks]);
}

FavoritesStruct createFavoritesStruct() => FavoritesStruct();

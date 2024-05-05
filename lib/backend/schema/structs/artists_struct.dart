// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtistsStruct extends BaseStruct {
  ArtistsStruct({
    List<ArtistStruct>? artists,
  }) : _artists = artists;

  // "artists" field.
  List<ArtistStruct>? _artists;
  List<ArtistStruct> get artists => _artists ?? const [];
  set artists(List<ArtistStruct>? val) => _artists = val;
  void updateArtists(Function(List<ArtistStruct>) updateFn) =>
      updateFn(_artists ??= []);
  bool hasArtists() => _artists != null;

  static ArtistsStruct fromMap(Map<String, dynamic> data) => ArtistsStruct(
        artists: getStructList(
          data['artists'],
          ArtistStruct.fromMap,
        ),
      );

  static ArtistsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ArtistsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'artists': _artists?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'artists': serializeParam(
          _artists,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ArtistsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ArtistsStruct(
        artists: deserializeStructParam<ArtistStruct>(
          data['artists'],
          ParamType.DataStruct,
          true,
          structBuilder: ArtistStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ArtistsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ArtistsStruct &&
        listEquality.equals(artists, other.artists);
  }

  @override
  int get hashCode => const ListEquality().hash([artists]);
}

ArtistsStruct createArtistsStruct() => ArtistsStruct();

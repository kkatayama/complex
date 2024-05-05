// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SuggestedArtistsStruct extends BaseStruct {
  SuggestedArtistsStruct({
    List<SuggestedArtistStruct>? artists,
  }) : _artists = artists;

  // "artists" field.
  List<SuggestedArtistStruct>? _artists;
  List<SuggestedArtistStruct> get artists => _artists ?? const [];
  set artists(List<SuggestedArtistStruct>? val) => _artists = val;
  void updateArtists(Function(List<SuggestedArtistStruct>) updateFn) =>
      updateFn(_artists ??= []);
  bool hasArtists() => _artists != null;

  static SuggestedArtistsStruct fromMap(Map<String, dynamic> data) =>
      SuggestedArtistsStruct(
        artists: getStructList(
          data['artists'],
          SuggestedArtistStruct.fromMap,
        ),
      );

  static SuggestedArtistsStruct? maybeFromMap(dynamic data) => data is Map
      ? SuggestedArtistsStruct.fromMap(data.cast<String, dynamic>())
      : null;

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

  static SuggestedArtistsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SuggestedArtistsStruct(
        artists: deserializeStructParam<SuggestedArtistStruct>(
          data['artists'],
          ParamType.DataStruct,
          true,
          structBuilder: SuggestedArtistStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SuggestedArtistsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SuggestedArtistsStruct &&
        listEquality.equals(artists, other.artists);
  }

  @override
  int get hashCode => const ListEquality().hash([artists]);
}

SuggestedArtistsStruct createSuggestedArtistsStruct() =>
    SuggestedArtistsStruct();

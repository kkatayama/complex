// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SuggestedAlbumsStruct extends BaseStruct {
  SuggestedAlbumsStruct({
    List<SuggestedAlbumStruct>? albums,
  }) : _albums = albums;

  // "albums" field.
  List<SuggestedAlbumStruct>? _albums;
  List<SuggestedAlbumStruct> get albums => _albums ?? const [];
  set albums(List<SuggestedAlbumStruct>? val) => _albums = val;
  void updateAlbums(Function(List<SuggestedAlbumStruct>) updateFn) =>
      updateFn(_albums ??= []);
  bool hasAlbums() => _albums != null;

  static SuggestedAlbumsStruct fromMap(Map<String, dynamic> data) =>
      SuggestedAlbumsStruct(
        albums: getStructList(
          data['albums'],
          SuggestedAlbumStruct.fromMap,
        ),
      );

  static SuggestedAlbumsStruct? maybeFromMap(dynamic data) => data is Map
      ? SuggestedAlbumsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'albums': _albums?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'albums': serializeParam(
          _albums,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static SuggestedAlbumsStruct fromSerializableMap(Map<String, dynamic> data) =>
      SuggestedAlbumsStruct(
        albums: deserializeStructParam<SuggestedAlbumStruct>(
          data['albums'],
          ParamType.DataStruct,
          true,
          structBuilder: SuggestedAlbumStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SuggestedAlbumsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SuggestedAlbumsStruct &&
        listEquality.equals(albums, other.albums);
  }

  @override
  int get hashCode => const ListEquality().hash([albums]);
}

SuggestedAlbumsStruct createSuggestedAlbumsStruct() => SuggestedAlbumsStruct();

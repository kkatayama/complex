// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlbumsStruct extends BaseStruct {
  AlbumsStruct({
    List<AlbumStruct>? albums,
  }) : _albums = albums;

  // "albums" field.
  List<AlbumStruct>? _albums;
  List<AlbumStruct> get albums => _albums ?? const [];
  set albums(List<AlbumStruct>? val) => _albums = val;
  void updateAlbums(Function(List<AlbumStruct>) updateFn) =>
      updateFn(_albums ??= []);
  bool hasAlbums() => _albums != null;

  static AlbumsStruct fromMap(Map<String, dynamic> data) => AlbumsStruct(
        albums: getStructList(
          data['albums'],
          AlbumStruct.fromMap,
        ),
      );

  static AlbumsStruct? maybeFromMap(dynamic data) =>
      data is Map ? AlbumsStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static AlbumsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AlbumsStruct(
        albums: deserializeStructParam<AlbumStruct>(
          data['albums'],
          ParamType.DataStruct,
          true,
          structBuilder: AlbumStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AlbumsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AlbumsStruct && listEquality.equals(albums, other.albums);
  }

  @override
  int get hashCode => const ListEquality().hash([albums]);
}

AlbumsStruct createAlbumsStruct() => AlbumsStruct();

// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtistStruct extends BaseStruct {
  ArtistStruct({
    int? artistID,
    String? artistName,
    String? artistPhotoURL,
    List<AlbumStruct>? albums,
  })  : _artistID = artistID,
        _artistName = artistName,
        _artistPhotoURL = artistPhotoURL,
        _albums = albums;

  // "artistID" field.
  int? _artistID;
  int get artistID => _artistID ?? 0;
  set artistID(int? val) => _artistID = val;
  void incrementArtistID(int amount) => _artistID = artistID + amount;
  bool hasArtistID() => _artistID != null;

  // "artistName" field.
  String? _artistName;
  String get artistName => _artistName ?? '';
  set artistName(String? val) => _artistName = val;
  bool hasArtistName() => _artistName != null;

  // "artistPhotoURL" field.
  String? _artistPhotoURL;
  String get artistPhotoURL => _artistPhotoURL ?? '';
  set artistPhotoURL(String? val) => _artistPhotoURL = val;
  bool hasArtistPhotoURL() => _artistPhotoURL != null;

  // "albums" field.
  List<AlbumStruct>? _albums;
  List<AlbumStruct> get albums => _albums ?? const [];
  set albums(List<AlbumStruct>? val) => _albums = val;
  void updateAlbums(Function(List<AlbumStruct>) updateFn) =>
      updateFn(_albums ??= []);
  bool hasAlbums() => _albums != null;

  static ArtistStruct fromMap(Map<String, dynamic> data) => ArtistStruct(
        artistID: castToType<int>(data['artistID']),
        artistName: data['artistName'] as String?,
        artistPhotoURL: data['artistPhotoURL'] as String?,
        albums: getStructList(
          data['albums'],
          AlbumStruct.fromMap,
        ),
      );

  static ArtistStruct? maybeFromMap(dynamic data) =>
      data is Map ? ArtistStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'artistID': _artistID,
        'artistName': _artistName,
        'artistPhotoURL': _artistPhotoURL,
        'albums': _albums?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'artistID': serializeParam(
          _artistID,
          ParamType.int,
        ),
        'artistName': serializeParam(
          _artistName,
          ParamType.String,
        ),
        'artistPhotoURL': serializeParam(
          _artistPhotoURL,
          ParamType.String,
        ),
        'albums': serializeParam(
          _albums,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ArtistStruct fromSerializableMap(Map<String, dynamic> data) =>
      ArtistStruct(
        artistID: deserializeParam(
          data['artistID'],
          ParamType.int,
          false,
        ),
        artistName: deserializeParam(
          data['artistName'],
          ParamType.String,
          false,
        ),
        artistPhotoURL: deserializeParam(
          data['artistPhotoURL'],
          ParamType.String,
          false,
        ),
        albums: deserializeStructParam<AlbumStruct>(
          data['albums'],
          ParamType.DataStruct,
          true,
          structBuilder: AlbumStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ArtistStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ArtistStruct &&
        artistID == other.artistID &&
        artistName == other.artistName &&
        artistPhotoURL == other.artistPhotoURL &&
        listEquality.equals(albums, other.albums);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([artistID, artistName, artistPhotoURL, albums]);
}

ArtistStruct createArtistStruct({
  int? artistID,
  String? artistName,
  String? artistPhotoURL,
}) =>
    ArtistStruct(
      artistID: artistID,
      artistName: artistName,
      artistPhotoURL: artistPhotoURL,
    );

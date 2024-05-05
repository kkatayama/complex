// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageStruct extends BaseStruct {
  ImageStruct({
    int? imageID,
    String? resolution,
    String? imageURL,
    String? imageType,
    int? artistID,
    int? albumID,
    ArtistsStruct? artist,
    AlbumStruct? album,
  })  : _imageID = imageID,
        _resolution = resolution,
        _imageURL = imageURL,
        _imageType = imageType,
        _artistID = artistID,
        _albumID = albumID,
        _artist = artist,
        _album = album;

  // "imageID" field.
  int? _imageID;
  int get imageID => _imageID ?? 0;
  set imageID(int? val) => _imageID = val;
  void incrementImageID(int amount) => _imageID = imageID + amount;
  bool hasImageID() => _imageID != null;

  // "resolution" field.
  String? _resolution;
  String get resolution => _resolution ?? '';
  set resolution(String? val) => _resolution = val;
  bool hasResolution() => _resolution != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  set imageURL(String? val) => _imageURL = val;
  bool hasImageURL() => _imageURL != null;

  // "imageType" field.
  String? _imageType;
  String get imageType => _imageType ?? '';
  set imageType(String? val) => _imageType = val;
  bool hasImageType() => _imageType != null;

  // "artistID" field.
  int? _artistID;
  int get artistID => _artistID ?? 0;
  set artistID(int? val) => _artistID = val;
  void incrementArtistID(int amount) => _artistID = artistID + amount;
  bool hasArtistID() => _artistID != null;

  // "albumID" field.
  int? _albumID;
  int get albumID => _albumID ?? 0;
  set albumID(int? val) => _albumID = val;
  void incrementAlbumID(int amount) => _albumID = albumID + amount;
  bool hasAlbumID() => _albumID != null;

  // "artist" field.
  ArtistsStruct? _artist;
  ArtistsStruct get artist => _artist ?? ArtistsStruct();
  set artist(ArtistsStruct? val) => _artist = val;
  void updateArtist(Function(ArtistsStruct) updateFn) =>
      updateFn(_artist ??= ArtistsStruct());
  bool hasArtist() => _artist != null;

  // "album" field.
  AlbumStruct? _album;
  AlbumStruct get album => _album ?? AlbumStruct();
  set album(AlbumStruct? val) => _album = val;
  void updateAlbum(Function(AlbumStruct) updateFn) =>
      updateFn(_album ??= AlbumStruct());
  bool hasAlbum() => _album != null;

  static ImageStruct fromMap(Map<String, dynamic> data) => ImageStruct(
        imageID: castToType<int>(data['imageID']),
        resolution: data['resolution'] as String?,
        imageURL: data['imageURL'] as String?,
        imageType: data['imageType'] as String?,
        artistID: castToType<int>(data['artistID']),
        albumID: castToType<int>(data['albumID']),
        artist: ArtistsStruct.maybeFromMap(data['artist']),
        album: AlbumStruct.maybeFromMap(data['album']),
      );

  static ImageStruct? maybeFromMap(dynamic data) =>
      data is Map ? ImageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'imageID': _imageID,
        'resolution': _resolution,
        'imageURL': _imageURL,
        'imageType': _imageType,
        'artistID': _artistID,
        'albumID': _albumID,
        'artist': _artist?.toMap(),
        'album': _album?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'imageID': serializeParam(
          _imageID,
          ParamType.int,
        ),
        'resolution': serializeParam(
          _resolution,
          ParamType.String,
        ),
        'imageURL': serializeParam(
          _imageURL,
          ParamType.String,
        ),
        'imageType': serializeParam(
          _imageType,
          ParamType.String,
        ),
        'artistID': serializeParam(
          _artistID,
          ParamType.int,
        ),
        'albumID': serializeParam(
          _albumID,
          ParamType.int,
        ),
        'artist': serializeParam(
          _artist,
          ParamType.DataStruct,
        ),
        'album': serializeParam(
          _album,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageStruct(
        imageID: deserializeParam(
          data['imageID'],
          ParamType.int,
          false,
        ),
        resolution: deserializeParam(
          data['resolution'],
          ParamType.String,
          false,
        ),
        imageURL: deserializeParam(
          data['imageURL'],
          ParamType.String,
          false,
        ),
        imageType: deserializeParam(
          data['imageType'],
          ParamType.String,
          false,
        ),
        artistID: deserializeParam(
          data['artistID'],
          ParamType.int,
          false,
        ),
        albumID: deserializeParam(
          data['albumID'],
          ParamType.int,
          false,
        ),
        artist: deserializeStructParam(
          data['artist'],
          ParamType.DataStruct,
          false,
          structBuilder: ArtistsStruct.fromSerializableMap,
        ),
        album: deserializeStructParam(
          data['album'],
          ParamType.DataStruct,
          false,
          structBuilder: AlbumStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ImageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ImageStruct &&
        imageID == other.imageID &&
        resolution == other.resolution &&
        imageURL == other.imageURL &&
        imageType == other.imageType &&
        artistID == other.artistID &&
        albumID == other.albumID &&
        artist == other.artist &&
        album == other.album;
  }

  @override
  int get hashCode => const ListEquality().hash([
        imageID,
        resolution,
        imageURL,
        imageType,
        artistID,
        albumID,
        artist,
        album
      ]);
}

ImageStruct createImageStruct({
  int? imageID,
  String? resolution,
  String? imageURL,
  String? imageType,
  int? artistID,
  int? albumID,
  ArtistsStruct? artist,
  AlbumStruct? album,
}) =>
    ImageStruct(
      imageID: imageID,
      resolution: resolution,
      imageURL: imageURL,
      imageType: imageType,
      artistID: artistID,
      albumID: albumID,
      artist: artist ?? ArtistsStruct(),
      album: album ?? AlbumStruct(),
    );

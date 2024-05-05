// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagesStruct extends BaseStruct {
  ImagesStruct({
    List<ImageStruct>? image,
  }) : _image = image;

  // "image" field.
  List<ImageStruct>? _image;
  List<ImageStruct> get image => _image ?? const [];
  set image(List<ImageStruct>? val) => _image = val;
  void updateImage(Function(List<ImageStruct>) updateFn) =>
      updateFn(_image ??= []);
  bool hasImage() => _image != null;

  static ImagesStruct fromMap(Map<String, dynamic> data) => ImagesStruct(
        image: getStructList(
          data['image'],
          ImageStruct.fromMap,
        ),
      );

  static ImagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? ImagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ImagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImagesStruct(
        image: deserializeStructParam<ImageStruct>(
          data['image'],
          ParamType.DataStruct,
          true,
          structBuilder: ImageStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ImagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ImagesStruct && listEquality.equals(image, other.image);
  }

  @override
  int get hashCode => const ListEquality().hash([image]);
}

ImagesStruct createImagesStruct() => ImagesStruct();

// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ERRORCreateAccountStruct extends BaseStruct {
  ERRORCreateAccountStruct({
    List<DetailStruct>? detail,
  }) : _detail = detail;

  // "detail" field.
  List<DetailStruct>? _detail;
  List<DetailStruct> get detail => _detail ?? const [];
  set detail(List<DetailStruct>? val) => _detail = val;
  void updateDetail(Function(List<DetailStruct>) updateFn) =>
      updateFn(_detail ??= []);
  bool hasDetail() => _detail != null;

  static ERRORCreateAccountStruct fromMap(Map<String, dynamic> data) =>
      ERRORCreateAccountStruct(
        detail: getStructList(
          data['detail'],
          DetailStruct.fromMap,
        ),
      );

  static ERRORCreateAccountStruct? maybeFromMap(dynamic data) => data is Map
      ? ERRORCreateAccountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'detail': _detail?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'detail': serializeParam(
          _detail,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static ERRORCreateAccountStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ERRORCreateAccountStruct(
        detail: deserializeStructParam<DetailStruct>(
          data['detail'],
          ParamType.DataStruct,
          true,
          structBuilder: DetailStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ERRORCreateAccountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ERRORCreateAccountStruct &&
        listEquality.equals(detail, other.detail);
  }

  @override
  int get hashCode => const ListEquality().hash([detail]);
}

ERRORCreateAccountStruct createERRORCreateAccountStruct() =>
    ERRORCreateAccountStruct();

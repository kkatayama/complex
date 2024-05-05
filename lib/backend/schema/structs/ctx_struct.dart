// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CtxStruct extends BaseStruct {
  CtxStruct({
    int? minLength,
  }) : _minLength = minLength;

  // "min_length" field.
  int? _minLength;
  int get minLength => _minLength ?? 0;
  set minLength(int? val) => _minLength = val;
  void incrementMinLength(int amount) => _minLength = minLength + amount;
  bool hasMinLength() => _minLength != null;

  static CtxStruct fromMap(Map<String, dynamic> data) => CtxStruct(
        minLength: castToType<int>(data['min_length']),
      );

  static CtxStruct? maybeFromMap(dynamic data) =>
      data is Map ? CtxStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'min_length': _minLength,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'min_length': serializeParam(
          _minLength,
          ParamType.int,
        ),
      }.withoutNulls;

  static CtxStruct fromSerializableMap(Map<String, dynamic> data) => CtxStruct(
        minLength: deserializeParam(
          data['min_length'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CtxStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CtxStruct && minLength == other.minLength;
  }

  @override
  int get hashCode => const ListEquality().hash([minLength]);
}

CtxStruct createCtxStruct({
  int? minLength,
}) =>
    CtxStruct(
      minLength: minLength,
    );

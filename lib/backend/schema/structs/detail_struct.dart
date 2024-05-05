// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailStruct extends BaseStruct {
  DetailStruct({
    String? type,
    List<String>? loc,
    String? msg,
    String? input,
    CtxStruct? ctx,
    String? url,
  })  : _type = type,
        _loc = loc,
        _msg = msg,
        _input = input,
        _ctx = ctx,
        _url = url;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "loc" field.
  List<String>? _loc;
  List<String> get loc => _loc ?? const [];
  set loc(List<String>? val) => _loc = val;
  void updateLoc(Function(List<String>) updateFn) => updateFn(_loc ??= []);
  bool hasLoc() => _loc != null;

  // "msg" field.
  String? _msg;
  String get msg => _msg ?? '';
  set msg(String? val) => _msg = val;
  bool hasMsg() => _msg != null;

  // "input" field.
  String? _input;
  String get input => _input ?? '';
  set input(String? val) => _input = val;
  bool hasInput() => _input != null;

  // "ctx" field.
  CtxStruct? _ctx;
  CtxStruct get ctx => _ctx ?? CtxStruct();
  set ctx(CtxStruct? val) => _ctx = val;
  void updateCtx(Function(CtxStruct) updateFn) =>
      updateFn(_ctx ??= CtxStruct());
  bool hasCtx() => _ctx != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  static DetailStruct fromMap(Map<String, dynamic> data) => DetailStruct(
        type: data['type'] as String?,
        loc: getDataList(data['loc']),
        msg: data['msg'] as String?,
        input: data['input'] as String?,
        ctx: CtxStruct.maybeFromMap(data['ctx']),
        url: data['url'] as String?,
      );

  static DetailStruct? maybeFromMap(dynamic data) =>
      data is Map ? DetailStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'loc': _loc,
        'msg': _msg,
        'input': _input,
        'ctx': _ctx?.toMap(),
        'url': _url,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'loc': serializeParam(
          _loc,
          ParamType.String,
          true,
        ),
        'msg': serializeParam(
          _msg,
          ParamType.String,
        ),
        'input': serializeParam(
          _input,
          ParamType.String,
        ),
        'ctx': serializeParam(
          _ctx,
          ParamType.DataStruct,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
      }.withoutNulls;

  static DetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        loc: deserializeParam<String>(
          data['loc'],
          ParamType.String,
          true,
        ),
        msg: deserializeParam(
          data['msg'],
          ParamType.String,
          false,
        ),
        input: deserializeParam(
          data['input'],
          ParamType.String,
          false,
        ),
        ctx: deserializeStructParam(
          data['ctx'],
          ParamType.DataStruct,
          false,
          structBuilder: CtxStruct.fromSerializableMap,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DetailStruct &&
        type == other.type &&
        listEquality.equals(loc, other.loc) &&
        msg == other.msg &&
        input == other.input &&
        ctx == other.ctx &&
        url == other.url;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([type, loc, msg, input, ctx, url]);
}

DetailStruct createDetailStruct({
  String? type,
  String? msg,
  String? input,
  CtxStruct? ctx,
  String? url,
}) =>
    DetailStruct(
      type: type,
      msg: msg,
      input: input,
      ctx: ctx ?? CtxStruct(),
      url: url,
    );

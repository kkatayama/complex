// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlayHistoryListStruct extends BaseStruct {
  PlayHistoryListStruct({
    List<PlayHistoryStruct>? playhistoryList,
  }) : _playhistoryList = playhistoryList;

  // "playhistoryList" field.
  List<PlayHistoryStruct>? _playhistoryList;
  List<PlayHistoryStruct> get playhistoryList => _playhistoryList ?? const [];
  set playhistoryList(List<PlayHistoryStruct>? val) => _playhistoryList = val;
  void updatePlayhistoryList(Function(List<PlayHistoryStruct>) updateFn) =>
      updateFn(_playhistoryList ??= []);
  bool hasPlayhistoryList() => _playhistoryList != null;

  static PlayHistoryListStruct fromMap(Map<String, dynamic> data) =>
      PlayHistoryListStruct(
        playhistoryList: getStructList(
          data['playhistoryList'],
          PlayHistoryStruct.fromMap,
        ),
      );

  static PlayHistoryListStruct? maybeFromMap(dynamic data) => data is Map
      ? PlayHistoryListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'playhistoryList': _playhistoryList?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'playhistoryList': serializeParam(
          _playhistoryList,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static PlayHistoryListStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlayHistoryListStruct(
        playhistoryList: deserializeStructParam<PlayHistoryStruct>(
          data['playhistoryList'],
          ParamType.DataStruct,
          true,
          structBuilder: PlayHistoryStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PlayHistoryListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PlayHistoryListStruct &&
        listEquality.equals(playhistoryList, other.playhistoryList);
  }

  @override
  int get hashCode => const ListEquality().hash([playhistoryList]);
}

PlayHistoryListStruct createPlayHistoryListStruct() => PlayHistoryListStruct();

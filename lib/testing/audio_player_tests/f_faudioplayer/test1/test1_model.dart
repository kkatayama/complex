import '/flutter_flow/flutter_flow_util.dart';
import '/testing/audio_player_tests/f_faudioplayer/f_faudioplayer/f_faudioplayer_widget.dart';
import 'test1_widget.dart' show Test1Widget;
import 'package:flutter/material.dart';

class Test1Model extends FlutterFlowModel<Test1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for FFaudioplayer component.
  late FFaudioplayerModel fFaudioplayerModel;

  @override
  void initState(BuildContext context) {
    fFaudioplayerModel = createModel(context, () => FFaudioplayerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fFaudioplayerModel.dispose();
  }
}

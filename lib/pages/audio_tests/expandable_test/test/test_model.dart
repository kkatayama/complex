import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/complayer/complayer_widget.dart';
import 'test_widget.dart' show TestWidget;
import 'package:flutter/material.dart';

class TestModel extends FlutterFlowModel<TestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for complayer component.
  late ComplayerModel complayerModel;

  @override
  void initState(BuildContext context) {
    complayerModel = createModel(context, () => ComplayerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    complayerModel.dispose();
  }
}

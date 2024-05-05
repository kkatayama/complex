import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/complayer/complayer_widget.dart';
import 'test_page_view_widget.dart' show TestPageViewWidget;
import 'package:flutter/material.dart';

class TestPageViewModel extends FlutterFlowModel<TestPageViewWidget> {
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

import '/flutter_flow/flutter_flow_util.dart';
import 'just_play_widget.dart' show JustPlayWidget;
import 'package:flutter/material.dart';

class JustPlayModel extends FlutterFlowModel<JustPlayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

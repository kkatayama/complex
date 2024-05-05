import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'allsongstest_widget.dart' show AllsongstestWidget;
import 'package:flutter/material.dart';

class AllsongstestModel extends FlutterFlowModel<AllsongstestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getTracksAlbumsArtists)] action in allsongstest widget.
  ApiCallResponse? apiTrackResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

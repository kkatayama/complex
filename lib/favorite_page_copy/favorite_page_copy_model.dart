import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'favorite_page_copy_widget.dart' show FavoritePageCopyWidget;
import 'package:flutter/material.dart';

class FavoritePageCopyModel extends FlutterFlowModel<FavoritePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (get_my_user)] action in FavoritePageCopy widget.
  ApiCallResponse? getMyUserResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

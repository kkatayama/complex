import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'playlist_pop_up_widget.dart' show PlaylistPopUpWidget;
import 'package:flutter/material.dart';

class PlaylistPopUpModel extends FlutterFlowModel<PlaylistPopUpWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (create_my_playlist)] action in Button widget.
  ApiCallResponse? apiCreatePlaylist;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

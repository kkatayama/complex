import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_with_popup_widget.dart' show HomePageWithPopupWidget;
import 'package:flutter/material.dart';

class HomePageWithPopupModel extends FlutterFlowModel<HomePageWithPopupWidget> {
  ///  Local state fields for this page.

  int createPlaylistPopupVisible = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (get_my_playlists)] action in HomePageWithPopup widget.
  ApiCallResponse? apiPlaylist;
  // Stores action output result for [Backend Call - API (delete_my_playlist_playlistID)] action in IconButton widget.
  ApiCallResponse? apiDeletePlaylist;
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
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}

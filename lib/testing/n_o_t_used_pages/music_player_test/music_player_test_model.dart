import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/testing/n_o_t_used_components/media_sidebar/media_sidebar_widget.dart';
import 'music_player_test_widget.dart' show MusicPlayerTestWidget;
import 'package:flutter/material.dart';

class MusicPlayerTestModel extends FlutterFlowModel<MusicPlayerTestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getTracksAlbumsArtists)] action in music_playerTest widget.
  ApiCallResponse? apiTrackResponse;
  // Model for mediaSidebar component.
  late MediaSidebarModel mediaSidebarModel;

  @override
  void initState(BuildContext context) {
    mediaSidebarModel = createModel(context, () => MediaSidebarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mediaSidebarModel.dispose();
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/testing/n_o_t_used_components/media_sidebar/media_sidebar_widget.dart';
import 'music_all_songs_w_o_r_k_s_copy_widget.dart'
    show MusicAllSongsWORKSCopyWidget;
import 'package:flutter/material.dart';

class MusicAllSongsWORKSCopyModel
    extends FlutterFlowModel<MusicAllSongsWORKSCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getTracksAlbumsArtists)] action in music_allSongs_WORKSCopy widget.
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

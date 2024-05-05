import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'side_nav_playlist_copy_widget.dart' show SideNavPlaylistCopyWidget;
import 'package:flutter/material.dart';

class SideNavPlaylistCopyModel
    extends FlutterFlowModel<SideNavPlaylistCopyWidget> {
  ///  Local state fields for this component.

  Color? homeColor;

  Color? favoritesColor;

  Color? musicColor;

  Color? settingsColor;

  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Stores action output result for [Backend Call - API (delete_my_playlist_playlistID)] action in IconButton widget.
  ApiCallResponse? apiDeletePlaylist;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

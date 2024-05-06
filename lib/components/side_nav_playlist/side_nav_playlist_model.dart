import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'side_nav_playlist_widget.dart' show SideNavPlaylistWidget;
import 'package:flutter/material.dart';

class SideNavPlaylistModel extends FlutterFlowModel<SideNavPlaylistWidget> {
  ///  Local state fields for this component.

  Color? homeColor;

  Color? favoritesColor;

  Color? musicColor;

  Color? settingsColor;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (delete_my_playlist_playlistID)] action in IconButton widget.
  ApiCallResponse? apiDeletePlaylist;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}

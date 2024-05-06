import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'side_nav_playlist_copy3_widget.dart' show SideNavPlaylistCopy3Widget;
import 'package:flutter/material.dart';

class SideNavPlaylistCopy3Model
    extends FlutterFlowModel<SideNavPlaylistCopy3Widget> {
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

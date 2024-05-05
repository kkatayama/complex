import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/complayer/complayer_widget.dart';
import '/pages/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/pages/components/side_nav_playlist/side_nav_playlist_widget.dart';
import 'settings_page_widget.dart' show SettingsPageWidget;
import 'package:flutter/material.dart';

class SettingsPageModel extends FlutterFlowModel<SettingsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SideNavPlaylist component.
  late SideNavPlaylistModel sideNavPlaylistModel;
  // Model for PlaylistPopUp component.
  late PlaylistPopUpModel playlistPopUpModel;
  // State field(s) for Switch widget.
  bool switchValue = true;
  // Stores action output result for [Backend Call - API (sign_out)] action in bt_logout widget.
  ApiCallResponse? apiSignOutResult;
  // Model for complayer component.
  late ComplayerModel complayerModel;

  @override
  void initState(BuildContext context) {
    sideNavPlaylistModel = createModel(context, () => SideNavPlaylistModel());
    playlistPopUpModel = createModel(context, () => PlaylistPopUpModel());
    complayerModel = createModel(context, () => ComplayerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavPlaylistModel.dispose();
    playlistPopUpModel.dispose();
    complayerModel.dispose();
  }
}

import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/pages/components/side_nav_playlist/side_nav_playlist_widget.dart';
import 'home_page_playlist_widget.dart' show HomePagePlaylistWidget;
import 'package:flutter/material.dart';

class HomePagePlaylistModel extends FlutterFlowModel<HomePagePlaylistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (get_my_user)] action in HomePagePlaylist widget.
  ApiCallResponse? getMyUserResponse;
  // Stores action output result for [Backend Call - API (getSuggestedArtists )] action in HomePagePlaylist widget.
  ApiCallResponse? getSuggestArtistsHomeRequest;
  // Model for SideNavPlaylist component.
  late SideNavPlaylistModel sideNavPlaylistModel;
  // Model for PlaylistPopUp component.
  late PlaylistPopUpModel playlistPopUpModel;

  @override
  void initState(BuildContext context) {
    sideNavPlaylistModel = createModel(context, () => SideNavPlaylistModel());
    playlistPopUpModel = createModel(context, () => PlaylistPopUpModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavPlaylistModel.dispose();
    playlistPopUpModel.dispose();
  }
}

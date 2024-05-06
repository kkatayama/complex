import '/backend/api_requests/api_calls.dart';
import '/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/components/side_nav_playlist/side_nav_playlist_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_playlist_copy_widget.dart' show HomePagePlaylistCopyWidget;
import 'package:flutter/material.dart';

class HomePagePlaylistCopyModel
    extends FlutterFlowModel<HomePagePlaylistCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (get_my_user)] action in HomePagePlaylistCopy widget.
  ApiCallResponse? getMyUserResponse;
  // Stores action output result for [Backend Call - API (getSuggestedArtists )] action in HomePagePlaylistCopy widget.
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

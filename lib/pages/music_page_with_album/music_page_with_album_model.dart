import '/backend/api_requests/api_calls.dart';
import '/components/back_button_bar/back_button_bar_widget.dart';
import '/components/complayer/complayer_widget.dart';
import '/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/components/side_nav_playlist/side_nav_playlist_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'music_page_with_album_widget.dart' show MusicPageWithAlbumWidget;
import 'package:flutter/material.dart';

class MusicPageWithAlbumModel
    extends FlutterFlowModel<MusicPageWithAlbumWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getAlbumAlbumIDTracks)] action in MusicPage_with_album widget.
  ApiCallResponse? apiAlbumTracks;
  // Model for SideNavPlaylist component.
  late SideNavPlaylistModel sideNavPlaylistModel;
  // Model for backButtonBar component.
  late BackButtonBarModel backButtonBarModel;
  // Model for complayer component.
  late ComplayerModel complayerModel;
  // Model for PlaylistPopUp component.
  late PlaylistPopUpModel playlistPopUpModel;

  @override
  void initState(BuildContext context) {
    sideNavPlaylistModel = createModel(context, () => SideNavPlaylistModel());
    backButtonBarModel = createModel(context, () => BackButtonBarModel());
    complayerModel = createModel(context, () => ComplayerModel());
    playlistPopUpModel = createModel(context, () => PlaylistPopUpModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavPlaylistModel.dispose();
    backButtonBarModel.dispose();
    complayerModel.dispose();
    playlistPopUpModel.dispose();
  }
}

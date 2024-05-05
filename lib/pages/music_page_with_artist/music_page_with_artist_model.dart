import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/back_button_bar/back_button_bar_widget.dart';
import '/pages/components/complayer/complayer_widget.dart';
import '/pages/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/pages/components/side_nav_playlist/side_nav_playlist_widget.dart';
import 'music_page_with_artist_widget.dart' show MusicPageWithArtistWidget;
import 'package:flutter/material.dart';

class MusicPageWithArtistModel
    extends FlutterFlowModel<MusicPageWithArtistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (get_artist_artistID_albums_tracks)] action in MusicPage_with_artist widget.
  ApiCallResponse? apiArtistAlbumsRequest;
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

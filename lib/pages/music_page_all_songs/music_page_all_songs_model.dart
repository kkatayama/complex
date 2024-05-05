import '/backend/api_requests/api_calls.dart';
import '/components/music_page_buttons_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/components/back_button_bar/back_button_bar_widget.dart';
import '/pages/components/complayer/complayer_widget.dart';
import '/pages/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/pages/components/side_nav_playlist/side_nav_playlist_widget.dart';
import 'music_page_all_songs_widget.dart' show MusicPageAllSongsWidget;
import 'package:flutter/material.dart';

class MusicPageAllSongsModel extends FlutterFlowModel<MusicPageAllSongsWidget> {
  ///  Local state fields for this page.

  int? isNotFavorite = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SideNavPlaylist component.
  late SideNavPlaylistModel sideNavPlaylistModel;
  // Model for backButtonBar component.
  late BackButtonBarModel backButtonBarModel;
  // Model for musicPageButtons component.
  late MusicPageButtonsModel musicPageButtonsModel;
  // Stores action output result for [Backend Call - API (addTrack_my_favorites)] action in IconButton widget.
  ApiCallResponse? apiNewFavoritePOST;
  // Stores action output result for [Backend Call - API (getTracksAlbumsArtists)] action in IconButton widget.
  ApiCallResponse? apiGetRefreshedTracksRequest;
  // Model for complayer component.
  late ComplayerModel complayerModel;
  // Model for PlaylistPopUp component.
  late PlaylistPopUpModel playlistPopUpModel;

  @override
  void initState(BuildContext context) {
    sideNavPlaylistModel = createModel(context, () => SideNavPlaylistModel());
    backButtonBarModel = createModel(context, () => BackButtonBarModel());
    musicPageButtonsModel = createModel(context, () => MusicPageButtonsModel());
    complayerModel = createModel(context, () => ComplayerModel());
    playlistPopUpModel = createModel(context, () => PlaylistPopUpModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavPlaylistModel.dispose();
    backButtonBarModel.dispose();
    musicPageButtonsModel.dispose();
    complayerModel.dispose();
    playlistPopUpModel.dispose();
  }
}

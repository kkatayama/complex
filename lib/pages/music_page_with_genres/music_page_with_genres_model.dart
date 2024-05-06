import '/components/back_button_bar/back_button_bar_widget.dart';
import '/components/complayer/complayer_widget.dart';
import '/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/components/side_nav_playlist/side_nav_playlist_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/testing/n_o_t_used_components/music_page_buttons/music_page_buttons_widget.dart';
import 'music_page_with_genres_widget.dart' show MusicPageWithGenresWidget;
import 'package:flutter/material.dart';

class MusicPageWithGenresModel
    extends FlutterFlowModel<MusicPageWithGenresWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SideNavPlaylist component.
  late SideNavPlaylistModel sideNavPlaylistModel;
  // Model for backButtonBar component.
  late BackButtonBarModel backButtonBarModel;
  // Model for musicPageButtons component.
  late MusicPageButtonsModel musicPageButtonsModel;
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

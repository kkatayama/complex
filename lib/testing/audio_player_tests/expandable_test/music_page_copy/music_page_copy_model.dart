import '/components/back_button_bar/back_button_bar_widget.dart';
import '/components/complayer/complayer_widget.dart';
import '/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/components/side_nav_playlist/side_nav_playlist_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/testing/n_o_t_used_components/music_page_buttons/music_page_buttons_widget.dart';
import 'music_page_copy_widget.dart' show MusicPageCopyWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MusicPageCopyModel extends FlutterFlowModel<MusicPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SideNavPlaylist component.
  late SideNavPlaylistModel sideNavPlaylistModel;
  // Model for backButtonBar component.
  late BackButtonBarModel backButtonBarModel;
  // Model for musicPageButtons component.
  late MusicPageButtonsModel musicPageButtonsModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Model for complayer component.
  late ComplayerModel complayerModel1;
  // Model for PlaylistPopUp component.
  late PlaylistPopUpModel playlistPopUpModel;
  // Model for complayer component.
  late ComplayerModel complayerModel2;

  @override
  void initState(BuildContext context) {
    sideNavPlaylistModel = createModel(context, () => SideNavPlaylistModel());
    backButtonBarModel = createModel(context, () => BackButtonBarModel());
    musicPageButtonsModel = createModel(context, () => MusicPageButtonsModel());
    complayerModel1 = createModel(context, () => ComplayerModel());
    playlistPopUpModel = createModel(context, () => PlaylistPopUpModel());
    complayerModel2 = createModel(context, () => ComplayerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavPlaylistModel.dispose();
    backButtonBarModel.dispose();
    musicPageButtonsModel.dispose();
    expandableExpandableController.dispose();
    complayerModel1.dispose();
    playlistPopUpModel.dispose();
    complayerModel2.dispose();
  }
}

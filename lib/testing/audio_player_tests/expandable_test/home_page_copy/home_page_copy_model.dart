import '/components/back_button_bar/back_button_bar_widget.dart';
import '/components/complayer/complayer_widget.dart';
import '/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/testing/audio_player_tests/expandable_test/side_nav_playlist_copy3/side_nav_playlist_copy3_widget.dart';
import 'home_page_copy_widget.dart' show HomePageCopyWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HomePageCopyModel extends FlutterFlowModel<HomePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SideNavPlaylistCopy3 component.
  late SideNavPlaylistCopy3Model sideNavPlaylistCopy3Model;
  // Model for backButtonBar component.
  late BackButtonBarModel backButtonBarModel;
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
    sideNavPlaylistCopy3Model =
        createModel(context, () => SideNavPlaylistCopy3Model());
    backButtonBarModel = createModel(context, () => BackButtonBarModel());
    complayerModel1 = createModel(context, () => ComplayerModel());
    playlistPopUpModel = createModel(context, () => PlaylistPopUpModel());
    complayerModel2 = createModel(context, () => ComplayerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavPlaylistCopy3Model.dispose();
    backButtonBarModel.dispose();
    expandableExpandableController.dispose();
    complayerModel1.dispose();
    playlistPopUpModel.dispose();
    complayerModel2.dispose();
  }
}

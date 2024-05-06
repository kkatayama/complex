import '/backend/api_requests/api_calls.dart';
import '/components/back_button_bar/back_button_bar_widget.dart';
import '/components/complayer/complayer_widget.dart';
import '/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/testing/audio_player_tests/expandable_test/side_nav_playlist_copy3/side_nav_playlist_copy3_widget.dart';
import 'favorite_page_copy2_widget.dart' show FavoritePageCopy2Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FavoritePageCopy2Model extends FlutterFlowModel<FavoritePageCopy2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SideNavPlaylistCopy3 component.
  late SideNavPlaylistCopy3Model sideNavPlaylistCopy3Model;
  // Model for backButtonBar component.
  late BackButtonBarModel backButtonBarModel;
  // Stores action output result for [Backend Call - API (delete_my_favorites_favoriteID)] action in IconButton widget.
  ApiCallResponse? apiDeleteFavorite;
  // Stores action output result for [Backend Call - API (get_my_favorites_tracks)] action in IconButton widget.
  ApiCallResponse? apiMyFavoriteTracksRequest;
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

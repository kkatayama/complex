import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/back_button_bar/back_button_bar_widget.dart';
import '/components/complayer/complayer_widget.dart';
import '/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/components/side_nav_playlist/side_nav_playlist_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/testing/n_o_t_used_components/music_page_buttons/music_page_buttons_widget.dart';
import 'music_page_with_song_filter_widget.dart'
    show MusicPageWithSongFilterWidget;
import 'package:flutter/material.dart';

class MusicPageWithSongFilterModel
    extends FlutterFlowModel<MusicPageWithSongFilterWidget> {
  ///  Local state fields for this page.

  List<TrackStruct> filteredTracks = [];
  void addToFilteredTracks(TrackStruct item) => filteredTracks.add(item);
  void removeFromFilteredTracks(TrackStruct item) =>
      filteredTracks.remove(item);
  void removeAtIndexFromFilteredTracks(int index) =>
      filteredTracks.removeAt(index);
  void insertAtIndexInFilteredTracks(int index, TrackStruct item) =>
      filteredTracks.insert(index, item);
  void updateFilteredTracksAtIndex(int index, Function(TrackStruct) updateFn) =>
      filteredTracks[index] = updateFn(filteredTracks[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (searchTracks)] action in MusicPage_with_songFilter widget.
  ApiCallResponse? apiSearchTracksInit;
  // Model for SideNavPlaylist component.
  late SideNavPlaylistModel sideNavPlaylistModel;
  // Model for backButtonBar component.
  late BackButtonBarModel backButtonBarModel;
  // Model for musicPageButtons component.
  late MusicPageButtonsModel musicPageButtonsModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (searchTracks)] action in Button widget.
  ApiCallResponse? apiSearchTracks;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<TrackStruct>();
  // Stores action output result for [Backend Call - API (addTrack_my_favorites)] action in IconButton widget.
  ApiCallResponse? apiNewFavoritePOST;
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
    textFieldFocusNode?.dispose();
    textController?.dispose();

    complayerModel.dispose();
    playlistPopUpModel.dispose();
  }
}

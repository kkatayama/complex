import '/backend/api_requests/api_calls.dart';
import '/components/complayer/complayer_widget.dart';
import '/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/components/side_nav_playlist/side_nav_playlist_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'playlist_add_track_widget.dart' show PlaylistAddTrackWidget;
import 'package:flutter/material.dart';

class PlaylistAddTrackModel extends FlutterFlowModel<PlaylistAddTrackWidget> {
  ///  Local state fields for this page.

  int addPlaylistTrackPopupVisible = 0;

  List<dynamic> playlistTracks = [];
  void addToPlaylistTracks(dynamic item) => playlistTracks.add(item);
  void removeFromPlaylistTracks(dynamic item) => playlistTracks.remove(item);
  void removeAtIndexFromPlaylistTracks(int index) =>
      playlistTracks.removeAt(index);
  void insertAtIndexInPlaylistTracks(int index, dynamic item) =>
      playlistTracks.insert(index, item);
  void updatePlaylistTracksAtIndex(int index, Function(dynamic) updateFn) =>
      playlistTracks[index] = updateFn(playlistTracks[index]);

  List<dynamic> filteredTracks = [];
  void addToFilteredTracks(dynamic item) => filteredTracks.add(item);
  void removeFromFilteredTracks(dynamic item) => filteredTracks.remove(item);
  void removeAtIndexFromFilteredTracks(int index) =>
      filteredTracks.removeAt(index);
  void insertAtIndexInFilteredTracks(int index, dynamic item) =>
      filteredTracks.insert(index, item);
  void updateFilteredTracksAtIndex(int index, Function(dynamic) updateFn) =>
      filteredTracks[index] = updateFn(filteredTracks[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (get_my_user)] action in PlaylistAddTrack widget.
  ApiCallResponse? getMyUserResponse;
  // Stores action output result for [Backend Call - API (getSuggestedArtists )] action in PlaylistAddTrack widget.
  ApiCallResponse? getSuggestArtistsHomeRequest;
  // Stores action output result for [Backend Call - API (get_my_playlist_playlistID_tracks)] action in PlaylistAddTrack widget.
  ApiCallResponse? apiPlaylistTracks;
  // Stores action output result for [Backend Call - API (get_my_playlists)] action in PlaylistAddTrack widget.
  ApiCallResponse? apiPlaylists;
  // Stores action output result for [Backend Call - API (searchTracks)] action in PlaylistAddTrack widget.
  ApiCallResponse? apiSearchTracksInit;
  // Model for SideNavPlaylist component.
  late SideNavPlaylistModel sideNavPlaylistModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (delete_my_playlist_playlistID_tracks)] action in IconButton widget.
  ApiCallResponse? apiDeleteTrack;
  // Stores action output result for [Backend Call - API (get_my_playlist_playlistID_tracks)] action in IconButton widget.
  ApiCallResponse? apiPlaylistTracksUpdated2;
  // Model for complayer component.
  late ComplayerModel complayerModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (searchTracks)] action in Button widget.
  ApiCallResponse? apiSearchTracks;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (addTrack_my_playlist_playlistID)] action in IconButton widget.
  ApiCallResponse? apiAddTrack;
  // Stores action output result for [Backend Call - API (get_my_playlist_playlistID_tracks)] action in IconButton widget.
  ApiCallResponse? apiPlaylistTracksUpdated;
  // Model for PlaylistPopUp component.
  late PlaylistPopUpModel playlistPopUpModel;

  @override
  void initState(BuildContext context) {
    sideNavPlaylistModel = createModel(context, () => SideNavPlaylistModel());
    complayerModel = createModel(context, () => ComplayerModel());
    playlistPopUpModel = createModel(context, () => PlaylistPopUpModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavPlaylistModel.dispose();
    complayerModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    playlistPopUpModel.dispose();
  }
}

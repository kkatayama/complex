import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'playlist_add_track_o_l_d_widget.dart' show PlaylistAddTrackOLDWidget;
import 'package:flutter/material.dart';

class PlaylistAddTrackOLDModel
    extends FlutterFlowModel<PlaylistAddTrackOLDWidget> {
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

  int createPlaylistPopupVisible = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (get_my_playlist_playlistID_tracks)] action in PlaylistAddTrackOLD widget.
  ApiCallResponse? apiPlaylistTracks;
  // Stores action output result for [Backend Call - API (get_my_playlists)] action in PlaylistAddTrackOLD widget.
  ApiCallResponse? apiPlaylists;
  // Stores action output result for [Backend Call - API (searchTracks)] action in PlaylistAddTrackOLD widget.
  ApiCallResponse? apiSearchTracksInit;
  // Stores action output result for [Backend Call - API (delete_my_playlist_playlistID)] action in IconButton widget.
  ApiCallResponse? apiDeletePlaylist;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (delete_my_playlist_playlistID_tracks)] action in IconButton widget.
  ApiCallResponse? apiDeleteTrack;
  // Stores action output result for [Backend Call - API (get_my_playlist_playlistID_tracks)] action in IconButton widget.
  ApiCallResponse? apiPlaylistTracksUpdated2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (create_my_playlist)] action in Button widget.
  ApiCallResponse? apiCreatePlaylist;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - API (searchTracks)] action in Button widget.
  ApiCallResponse? apiSearchTracks;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<dynamic>();
  // Stores action output result for [Backend Call - API (addTrack_my_playlist_playlistID)] action in IconButton widget.
  ApiCallResponse? apiAddTrack;
  // Stores action output result for [Backend Call - API (get_my_playlist_playlistID_tracks)] action in IconButton widget.
  ApiCallResponse? apiPlaylistTracksUpdated;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}

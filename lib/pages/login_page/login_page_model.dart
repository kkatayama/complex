import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for password widget.
  final passwordKey = GlobalKey();
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  String? passwordSelectedOption;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Backend Call - API (sign_in)] action in Button widget.
  ApiCallResponse? signInResult;
  // Stores action output result for [Backend Call - API (get_playhistory_tracks)] action in Button widget.
  ApiCallResponse? getplayhistory;
  // Stores action output result for [Backend Call - API (getSuggestedArtists )] action in Button widget.
  ApiCallResponse? apiSuggestArtistsHomeRequest;
  // Stores action output result for [Backend Call - API (getSuggestedAlbums)] action in Button widget.
  ApiCallResponse? apiSuggestedAlbumsRequest;
  // Stores action output result for [Backend Call - API (getTracksAlbumsArtists)] action in Button widget.
  ApiCallResponse? apiallitemsinfoRequest;
  // Stores action output result for [Backend Call - API (get_artists)] action in Button widget.
  ApiCallResponse? apiAllArtistRequest;
  // Stores action output result for [Backend Call - API (getAlbumsArtists)] action in Button widget.
  ApiCallResponse? apiGetAlbumsRequest;
  // Stores action output result for [Backend Call - API (get_my_favorites_tracks)] action in Button widget.
  ApiCallResponse? apiMyFavoriteTracksRequest;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    passwordFocusNode?.dispose();
  }
}

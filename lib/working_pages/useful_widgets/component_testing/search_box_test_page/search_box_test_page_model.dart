import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/working_pages/useful_widgets/search_box/search_box_widget.dart';
import 'search_box_test_page_widget.dart' show SearchBoxTestPageWidget;
import 'package:flutter/material.dart';

class SearchBoxTestPageModel extends FlutterFlowModel<SearchBoxTestPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getTracksAlbumsArtists)] action in searchBox_testPage widget.
  ApiCallResponse? apiTrackResponse;
  // Model for SearchBox component.
  late SearchBoxModel searchBoxModel;

  @override
  void initState(BuildContext context) {
    searchBoxModel = createModel(context, () => SearchBoxModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBoxModel.dispose();
  }
}

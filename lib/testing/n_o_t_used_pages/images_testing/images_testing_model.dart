import '/flutter_flow/flutter_flow_util.dart';
import '/testing/n_o_t_used_components/music_page_buttons/music_page_buttons_widget.dart';
import 'images_testing_widget.dart' show ImagesTestingWidget;
import 'package:flutter/material.dart';

class ImagesTestingModel extends FlutterFlowModel<ImagesTestingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for musicPageButtons component.
  late MusicPageButtonsModel musicPageButtonsModel;

  @override
  void initState(BuildContext context) {
    musicPageButtonsModel = createModel(context, () => MusicPageButtonsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    musicPageButtonsModel.dispose();
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'just_play_model.dart';
export 'just_play_model.dart';

class JustPlayWidget extends StatefulWidget {
  const JustPlayWidget({super.key});

  @override
  State<JustPlayWidget> createState() => _JustPlayWidgetState();
}

class _JustPlayWidgetState extends State<JustPlayWidget> {
  late JustPlayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JustPlayModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 787.0,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://i.imgur.com/QqdwEZj.jpeg',
                    ).image,
                  ),
                ),
                alignment: const AlignmentDirectional(0.0, -1.0),
              ),
              Container(
                width: 787.0,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://i.imgur.com/e2nXTgU.png',
                    ).image,
                  ),
                ),
                alignment: const AlignmentDirectional(0.0, -1.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

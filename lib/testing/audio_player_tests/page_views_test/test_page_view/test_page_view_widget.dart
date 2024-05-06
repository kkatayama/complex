import '/components/complayer/complayer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'test_page_view_model.dart';
export 'test_page_view_model.dart';

class TestPageViewWidget extends StatefulWidget {
  const TestPageViewWidget({super.key});

  @override
  State<TestPageViewWidget> createState() => _TestPageViewWidgetState();
}

class _TestPageViewWidgetState extends State<TestPageViewWidget> {
  late TestPageViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestPageViewModel());

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
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              expandedHeight: 140.0,
              pinned: true,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).alternate,
              automaticallyImplyLeading: false,
              leading: Stack(
                children: [
                  wrapWithModel(
                    model: _model.complayerModel,
                    updateCallback: () => setState(() {}),
                    child: const ComplayerWidget(),
                  ),
                ],
              ),
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              actions: const [],
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(70.0),
                child: Container(),
              ),
              centerTitle: false,
              toolbarHeight: 140.0,
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return const SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

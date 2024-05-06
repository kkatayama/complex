import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'complayer_model.dart';
export 'complayer_model.dart';

class ComplayerWidget extends StatefulWidget {
  const ComplayerWidget({super.key});

  @override
  State<ComplayerWidget> createState() => _ComplayerWidgetState();
}

class _ComplayerWidgetState extends State<ComplayerWidget> {
  late ComplayerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComplayerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return
        // Media player that pops up upon playing music. Shows currently playing song, its duration, album art, and artist. Contains action buttons for adding current song into a playlist, or favorting song.
        Align(
      alignment: const AlignmentDirectional(1.0, 1.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 620),
        curve: Curves.easeInOut,
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 100.0,
        constraints: const BoxConstraints(
          minWidth: 500.0,
          minHeight: 100.0,
          maxHeight: 140.0,
        ),
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.network(
                        valueOrDefault<String>(
                          TrackInfoStruct.maybeFromMap(functions
                                  .parseTrackInfo(FFAppState().PlayNowURL))
                              ?.albumCoverURL,
                          'https://api.mangoboat.tv/images/cd.png',
                        ),
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.25,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.sizeOf(context).width * 0.1,
                    maxWidth: MediaQuery.sizeOf(context).width * 0.3,
                    maxHeight: 140.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 4.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 1.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  AutoSizeText(
                                    valueOrDefault<String>(
                                      TrackInfoStruct.maybeFromMap(
                                              functions.parseTrackInfo(
                                                  FFAppState().PlayNowURL))
                                          ?.songTitle,
                                      'songTitle',
                                    ).maybeHandleOverflow(maxChars: 30),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmallFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmallFamily),
                                        ),
                                    minFontSize: 12.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 4.0, 0.0, 0.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SelectionArea(
                                      child: AutoSizeText(
                                    valueOrDefault<String>(
                                      TrackInfoStruct.maybeFromMap(
                                              functions.parseTrackInfo(
                                                  FFAppState().PlayNowURL))
                                          ?.albumName,
                                      'albumName',
                                    ).maybeHandleOverflow(maxChars: 30),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .titleMediumFamily),
                                        ),
                                    minFontSize: 12.0,
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 5.0)),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Align(
                alignment: const AlignmentDirectional(1.0, 1.0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 620),
                  curve: Curves.easeInOut,
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  height: 100.0,
                  constraints: BoxConstraints(
                    minWidth: MediaQuery.sizeOf(context).width * 0.3,
                    maxWidth: 1650.0,
                    maxHeight: 140.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.65,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    child: custom_widgets.ComPlexMusicPlayer(
                      width: MediaQuery.sizeOf(context).width * 0.65,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      initialUrl: FFAppState().PlayNowURL,
                      sliderActiveColor: FlutterFlowTheme.of(context).primary,
                      sliderInactiveColor:
                          FlutterFlowTheme.of(context).alternate,
                      backwardIconPath: Icon(
                        Icons.replay_5_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      forwardIconPath: Icon(
                        Icons.forward_5_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      backwardIconColor:
                          FlutterFlowTheme.of(context).primaryText,
                      forwardIconColor:
                          FlutterFlowTheme.of(context).primaryText,
                      pauseIconPath: Icon(
                        FFIcons.kpause,
                        color: FlutterFlowTheme.of(context).vibrant,
                        size: 20.0,
                      ),
                      playIconPath: FaIcon(
                        FontAwesomeIcons.playCircle,
                        color: FlutterFlowTheme.of(context).vibrant,
                        size: 20.0,
                      ),
                      pauseIconColor:
                          FlutterFlowTheme.of(context).vibrantBright,
                      playIconColor: FlutterFlowTheme.of(context).vibrantBright,
                      loopIconPath: Icon(
                        Icons.repeat_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      loopIconColor: FlutterFlowTheme.of(context).vibrantBright,
                      shuffleIconPath: Icon(
                        FFIcons.karrowShuffle,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      shuffleIconColor:
                          FlutterFlowTheme.of(context).vibrantBright,
                      playbackDurationTextColor:
                          FlutterFlowTheme.of(context).vibrant,
                      previousIconPath: Icon(
                        Icons.skip_previous_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      nextIconPath: Icon(
                        Icons.skip_next_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      previousIconColor:
                          FlutterFlowTheme.of(context).primary100,
                      nextIconColor: FlutterFlowTheme.of(context).primary100,
                      loopIconPressedPath: Icon(
                        Icons.repeat_one_rounded,
                        color: FlutterFlowTheme.of(context).vibrantBright,
                        size: 20.0,
                      ),
                      shuffleIconPressedPath: Icon(
                        FFIcons.karrowShuffle,
                        color: FlutterFlowTheme.of(context).vibrantBright,
                        size: 20.0,
                      ),
                      musicUrls: FFAppState().MTRACKS,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 140.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).highlight,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).vibrantLight,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor: FlutterFlowTheme.of(context).highlight,
                        icon: Icon(
                          Icons.favorite_border_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

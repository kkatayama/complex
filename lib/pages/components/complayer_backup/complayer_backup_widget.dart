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
import 'complayer_backup_model.dart';
export 'complayer_backup_model.dart';

class ComplayerBackupWidget extends StatefulWidget {
  const ComplayerBackupWidget({super.key});

  @override
  State<ComplayerBackupWidget> createState() => _ComplayerBackupWidgetState();
}

class _ComplayerBackupWidgetState extends State<ComplayerBackupWidget> {
  late ComplayerBackupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComplayerBackupModel());

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
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: 140.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).highlight,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 8.0, 8.0),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    valueOrDefault<String>(
                      TrackInfoStruct.maybeFromMap(
                              functions.parseTrackInfo(FFAppState().PlayNowURL))
                          ?.albumCoverURL,
                      'albumCoverURL',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 8.0, 0.0),
              child: Container(
                width: 235.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).highlight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).highlight,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 1.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  valueOrDefault<String>(
                                    TrackInfoStruct.maybeFromMap(
                                            functions.parseTrackInfo(
                                                FFAppState().PlayNowURL))
                                        ?.songTitle,
                                    'songTitle',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleSmallFamily,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleSmallFamily),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).highlight,
                          ),
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
                                  ).maybeHandleOverflow(maxChars: 20),
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
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
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: const BoxDecoration(),
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: 140.0,
                  child: custom_widgets.ComPlexMusicPlayer(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: 140.0,
                    initialUrl:
                        'https://api.mangoboat.tv/music/Alison Wonderland/Run/01 - Run.mp3',
                    sliderActiveColor: FlutterFlowTheme.of(context).primary,
                    sliderInactiveColor: FlutterFlowTheme.of(context).alternate,
                    backwardIconPath: Icon(
                      Icons.replay_5_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    forwardIconPath: Icon(
                      Icons.forward_5_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    backwardIconColor: FlutterFlowTheme.of(context).primaryText,
                    forwardIconColor: FlutterFlowTheme.of(context).primaryText,
                    pauseIconPath: Icon(
                      FFIcons.kpause,
                      color: FlutterFlowTheme.of(context).vibrant,
                      size: 24.0,
                    ),
                    playIconPath: FaIcon(
                      FontAwesomeIcons.playCircle,
                      color: FlutterFlowTheme.of(context).vibrant,
                      size: 24.0,
                    ),
                    pauseIconColor: FlutterFlowTheme.of(context).vibrantBright,
                    playIconColor: FlutterFlowTheme.of(context).vibrantBright,
                    loopIconPath: Icon(
                      Icons.repeat_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    loopIconColor: FlutterFlowTheme.of(context).vibrantBright,
                    shuffleIconPath: Icon(
                      FFIcons.karrowShuffle,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    shuffleIconColor:
                        FlutterFlowTheme.of(context).vibrantBright,
                    playbackDurationTextColor:
                        FlutterFlowTheme.of(context).vibrant,
                    previousIconPath: Icon(
                      Icons.skip_previous_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    nextIconPath: Icon(
                      Icons.skip_next_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    previousIconColor: FlutterFlowTheme.of(context).primary100,
                    nextIconColor: FlutterFlowTheme.of(context).primary100,
                    loopIconPressedPath: Icon(
                      Icons.repeat_one_rounded,
                      color: FlutterFlowTheme.of(context).vibrantBright,
                      size: 24.0,
                    ),
                    shuffleIconPressedPath: Icon(
                      FFIcons.karrowShuffle,
                      color: FlutterFlowTheme.of(context).vibrantBright,
                      size: 24.0,
                    ),
                    musicUrls: FFAppState().MTRACKS,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).highlight,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
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

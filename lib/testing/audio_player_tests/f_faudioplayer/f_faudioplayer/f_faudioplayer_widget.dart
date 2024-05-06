import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'f_faudioplayer_model.dart';
export 'f_faudioplayer_model.dart';

class FFaudioplayerWidget extends StatefulWidget {
  const FFaudioplayerWidget({super.key});

  @override
  State<FFaudioplayerWidget> createState() => _FFaudioplayerWidgetState();
}

class _FFaudioplayerWidgetState extends State<FFaudioplayerWidget> {
  late FFaudioplayerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FFaudioplayerModel());

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

    return Align(
      alignment: const AlignmentDirectional(-1.0, -1.0),
      child: SizedBox(
        width: 500.0,
        height: 80.0,
        child: Stack(
          children: [
            SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: FlutterFlowAudioPlayer(
                  audio: Audio.network(
                    FFAppState().PlayNowURL,
                    metas: Metas(
                      id: '2vqf7_-bcb8173a',
                      title: valueOrDefault<String>(
                        TrackInfoStruct.maybeFromMap(functions
                                .parseTrackInfo(FFAppState().PlayNowURL))
                            ?.songTitle,
                        'songTitle',
                      ),
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).titleLargeFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).titleLargeFamily),
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).labelMediumFamily,
                            letterSpacing: 0.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).labelMediumFamily),
                          ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  playbackButtonColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 4.0,
                  pauseOnNavigate: false,
                  playInBackground: PlayInBackground.enabled,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

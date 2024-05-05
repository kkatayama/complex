import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'music_page_buttons_model.dart';
export 'music_page_buttons_model.dart';

class MusicPageButtonsWidget extends StatefulWidget {
  const MusicPageButtonsWidget({super.key});

  @override
  State<MusicPageButtonsWidget> createState() => _MusicPageButtonsWidgetState();
}

class _MusicPageButtonsWidgetState extends State<MusicPageButtonsWidget> {
  late MusicPageButtonsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MusicPageButtonsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('MusicPage_all_artists');

            final colorPicked1Color = await showFFColorPicker(
              context,
              currentColor: _model.colorPicked1 ??=
                  FlutterFlowTheme.of(context).vibrantLight,
              showRecentColors: true,
              allowOpacity: true,
              textColor: FlutterFlowTheme.of(context).primaryText,
              secondaryTextColor: FlutterFlowTheme.of(context).secondaryText,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              primaryButtonBackgroundColor:
                  FlutterFlowTheme.of(context).tertiary,
              primaryButtonTextColor: Colors.white,
              primaryButtonBorderColor: Colors.transparent,
              displayAsBottomSheet: isMobileWidth(context),
            );

            if (colorPicked1Color != null) {
              safeSetState(() => _model.colorPicked1 = colorPicked1Color);
            }
          },
          text: 'Artists',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).secondaryText,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: Colors.white,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily),
                ),
            elevation: 3.0,
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('MusicPage_all_songs');

            final colorPicked2Color = await showFFColorPicker(
              context,
              currentColor: _model.colorPicked2 ??=
                  FlutterFlowTheme.of(context).vibrantLight,
              showRecentColors: true,
              allowOpacity: true,
              textColor: FlutterFlowTheme.of(context).primaryText,
              secondaryTextColor: FlutterFlowTheme.of(context).secondaryText,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              primaryButtonBackgroundColor:
                  FlutterFlowTheme.of(context).tertiary,
              primaryButtonTextColor: Colors.white,
              primaryButtonBorderColor: Colors.transparent,
              displayAsBottomSheet: isMobileWidth(context),
            );

            if (colorPicked2Color != null) {
              safeSetState(() => _model.colorPicked2 = colorPicked2Color);
            }
          },
          text: 'Songs',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).secondaryText,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: Colors.white,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily),
                ),
            elevation: 3.0,
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('MusicPage_all_albums');

            final colorPicked3Color = await showFFColorPicker(
              context,
              currentColor: _model.colorPicked3 ??=
                  FlutterFlowTheme.of(context).vibrantLight,
              showRecentColors: true,
              allowOpacity: true,
              textColor: FlutterFlowTheme.of(context).primaryText,
              secondaryTextColor: FlutterFlowTheme.of(context).secondaryText,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              primaryButtonBackgroundColor:
                  FlutterFlowTheme.of(context).tertiary,
              primaryButtonTextColor: Colors.white,
              primaryButtonBorderColor: Colors.transparent,
              displayAsBottomSheet: isMobileWidth(context),
            );

            if (colorPicked3Color != null) {
              safeSetState(() => _model.colorPicked3 = colorPicked3Color);
            }
          },
          text: 'Albums',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).secondaryText,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: Colors.white,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily),
                ),
            elevation: 3.0,
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('MusicPage_with_genres');

            final colorPicked4Color = await showFFColorPicker(
              context,
              currentColor: _model.colorPicked4 ??=
                  FlutterFlowTheme.of(context).vibrantLight,
              showRecentColors: true,
              allowOpacity: true,
              textColor: FlutterFlowTheme.of(context).primaryText,
              secondaryTextColor: FlutterFlowTheme.of(context).secondaryText,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              primaryButtonBackgroundColor:
                  FlutterFlowTheme.of(context).tertiary,
              primaryButtonTextColor: Colors.white,
              primaryButtonBorderColor: Colors.transparent,
              displayAsBottomSheet: isMobileWidth(context),
            );

            if (colorPicked4Color != null) {
              safeSetState(() => _model.colorPicked4 = colorPicked4Color);
            }
          },
          text: 'Genres',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).secondaryText,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: Colors.white,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily),
                ),
            elevation: 3.0,
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            context.pushNamed('MusicPage_with_songFilter');

            final colorPicked5Color = await showFFColorPicker(
              context,
              currentColor: _model.colorPicked5 ??=
                  FlutterFlowTheme.of(context).vibrantLight,
              showRecentColors: true,
              allowOpacity: true,
              textColor: FlutterFlowTheme.of(context).primaryText,
              secondaryTextColor: FlutterFlowTheme.of(context).secondaryText,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              primaryButtonBackgroundColor:
                  FlutterFlowTheme.of(context).tertiary,
              primaryButtonTextColor: Colors.white,
              primaryButtonBorderColor: Colors.transparent,
              displayAsBottomSheet: isMobileWidth(context),
            );

            if (colorPicked5Color != null) {
              safeSetState(() => _model.colorPicked5 = colorPicked5Color);
            }
          },
          text: 'Search',
          options: FFButtonOptions(
            height: 40.0,
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).secondaryText,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).titleSmallFamily,
                  color: Colors.white,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).titleSmallFamily),
                ),
            elevation: 3.0,
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ].divide(const SizedBox(width: 15.0)),
    );
  }
}

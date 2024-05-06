import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/back_button_bar/back_button_bar_widget.dart';
import '/components/complayer/complayer_widget.dart';
import '/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/components/side_nav_playlist/side_nav_playlist_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/backend/schema/structs/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'favorite_page_model.dart';
export 'favorite_page_model.dart';

class FavoritePageWidget extends StatefulWidget {
  const FavoritePageWidget({super.key});

  @override
  State<FavoritePageWidget> createState() => _FavoritePageWidgetState();
}

class _FavoritePageWidgetState extends State<FavoritePageWidget>
    with TickerProviderStateMixin {
  late FavoritePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavoritePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiMyFavoriteTracksRequest2 =
          await ComPlexBackendAPIGroup.getMyFavoritesTracksCall.call(
        token: currentAuthenticationToken,
      );
      FFAppState().update(() {
        FFAppState().PAGENAME = 'Favorites';
        FFAppState().FavoriteSongs =
            ComPlexBackendAPIGroup.getMyFavoritesTracksCall
                .favorites(
                  (_model.apiMyFavoriteTracksRequest2?.jsonBody ?? ''),
                )!
                .toList()
                .cast<dynamic>();
      });
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: wrapWithModel(
                      model: _model.sideNavPlaylistModel,
                      updateCallback: () => setState(() {}),
                      child: const SideNavPlaylistWidget(),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                  Expanded(
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xFF1B2127),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Flexible(
                                      child: wrapWithModel(
                                        model: _model.backButtonBarModel,
                                        updateCallback: () => setState(() {}),
                                        child: const BackButtonBarWidget(),
                                      ),
                                    ),

                                    // User's Favorites Label
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          175.0, 0.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SelectionArea(
                                              child: Text(
                                            valueOrDefault<String>(
                                              FFAppState().USERNAME,
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(FlutterFlowTheme
                                                              .of(context)
                                                          .headlineLargeFamily),
                                                ),
                                          )),
                                          SelectionArea(
                                              child: Text(
                                            '\'s ',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(FlutterFlowTheme
                                                              .of(context)
                                                          .headlineLargeFamily),
                                                ),
                                          )),
                                          SelectionArea(
                                              child: Text(
                                            'favorites!',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineLargeFamily,
                                                  letterSpacing: 0.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(FlutterFlowTheme
                                                              .of(context)
                                                          .headlineLargeFamily),
                                                ),
                                          )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.7,
                                      decoration: const BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.65,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.8,
                                            decoration: const BoxDecoration(),
                                            child:
                                                // Displays favorite tracks in a formatted list.
                                                Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final favoriteSongsList =
                                                      FFAppState()
                                                          .FavoriteSongs
                                                          .map((e) => e)
                                                          .toList()
                                                          .take(100)
                                                          .toList();
                                                  return ListView.separated(
                                                    padding: EdgeInsets.zero,
                                                    primary: false,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: favoriteSongsList
                                                        .length,
                                                    separatorBuilder: (_, __) =>
                                                        const SizedBox(height: 10.0),
                                                    itemBuilder: (context,
                                                        favoriteSongsListIndex) {
                                                      final favoriteSongsListItem =
                                                          favoriteSongsList[
                                                              favoriteSongsListIndex];
                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                            child:
                                                                BackdropFilter(
                                                              filter:
                                                                  ImageFilter
                                                                      .blur(
                                                                sigmaX: 2.0,
                                                                sigmaY: 2.0,
                                                              ),
                                                              child: Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.6,
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.07,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0x8D262D34),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5.0),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          TrackStruct.maybeFromMap(favoriteSongsListItem)
                                                                              ?.album
                                                                              .albumCoverURL,
                                                                          '0',
                                                                        ),
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .highlight,
                                                                      ),
                                                                    ),
                                                                    SelectionArea(
                                                                        child:
                                                                            AutoSizeText(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        FavoriteStruct.maybeFromMap(favoriteSongsListItem)
                                                                            ?.trackName,
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      minFontSize:
                                                                          12.0,
                                                                    )),
                                                                    SizedBox(
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .highlight,
                                                                      ),
                                                                    ),
                                                                    SelectionArea(
                                                                        child:
                                                                            AutoSizeText(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        FavoriteStruct.maybeFromMap(favoriteSongsListItem)
                                                                            ?.artist
                                                                            .artistName,
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      minFontSize:
                                                                          12.0,
                                                                    )),
                                                                    SizedBox(
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .highlight,
                                                                      ),
                                                                    ),
                                                                    SelectionArea(
                                                                        child:
                                                                            AutoSizeText(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        FavoriteStruct.maybeFromMap(favoriteSongsListItem)
                                                                            ?.album
                                                                            .albumName,
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      minFontSize:
                                                                          12.0,
                                                                    )),
                                                                    SizedBox(
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .highlight,
                                                                      ),
                                                                    ),
                                                                    SelectionArea(
                                                                        child:
                                                                            AutoSizeText(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        FavoriteStruct.maybeFromMap(favoriteSongsListItem)
                                                                            ?.album
                                                                            .albumName,
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      minFontSize:
                                                                          12.0,
                                                                    )),
                                                                    SizedBox(
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .highlight,
                                                                      ),
                                                                    ),
                                                                    SelectionArea(
                                                                        child:
                                                                            AutoSizeText(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        FavoriteStruct.maybeFromMap(favoriteSongsListItem)
                                                                            ?.recordedDate,
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      minFontSize:
                                                                          12.0,
                                                                    )),
                                                                    SizedBox(
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          VerticalDivider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .highlight,
                                                                      ),
                                                                    ),
                                                                    SelectionArea(
                                                                        child:
                                                                            AutoSizeText(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        FavoriteStruct.maybeFromMap(favoriteSongsListItem)
                                                                            ?.duration,
                                                                        '0',
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                      minFontSize:
                                                                          12.0,
                                                                    )),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).vibrantLight,
                                                                          shape:
                                                                              BoxShape.circle,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      const BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            2.0,
                                                                            0.0),
                                                                    child:
                                                                        FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          0.0,
                                                                      borderWidth:
                                                                          0.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .favorite_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .vibrantLight,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        _model.apiDeleteFavorite = await ComPlexBackendAPIGroup
                                                                            .deleteMyFavoritesFavoriteIDCall
                                                                            .call(
                                                                          token:
                                                                              currentAuthenticationToken,
                                                                          favoriteID:
                                                                              FavoriteStruct.maybeFromMap(favoriteSongsListItem)?.favoriteID,
                                                                        );
                                                                        _model.apiMyFavoriteTracksRequest = await ComPlexBackendAPIGroup
                                                                            .getMyFavoritesTracksCall
                                                                            .call(
                                                                          token:
                                                                              currentAuthenticationToken,
                                                                        );
                                                                        FFAppState()
                                                                            .update(() {
                                                                          FFAppState().FavoriteSongs = ComPlexBackendAPIGroup
                                                                              .getMyFavoritesTracksCall
                                                                              .favorites(
                                                                                (_model.apiMyFavoriteTracksRequest?.jsonBody ?? ''),
                                                                              )!
                                                                              .toList()
                                                                              .cast<dynamic>();
                                                                        });

                                                                        setState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .vibrantLight,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          0.0,
                                                                      borderWidth:
                                                                          0.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .play_arrow_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        FFAppState()
                                                                            .update(() {
                                                                          FFAppState().PlayNowURL =
                                                                              valueOrDefault<String>(
                                                                            TrackStruct.maybeFromMap(favoriteSongsListItem)?.trackURL,
                                                                            '0',
                                                                          );
                                                                        });
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.complayerModel,
                              updateCallback: () => setState(() {}),
                              updateOnChange: true,
                              child: const Hero(
                                tag: 'player',
                                transitionOnUserGestures: true,
                                child: Material(
                                  color: Colors.transparent,
                                  child: ComplayerWidget(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.sizeOf(context).width * 0.5,
                    maxHeight: MediaQuery.sizeOf(context).height * 0.4,
                  ),
                  decoration: const BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.playlistPopUpModel,
                    updateCallback: () => setState(() {}),
                    child: const PlaylistPopUpWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

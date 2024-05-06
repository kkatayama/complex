import '/components/back_button_bar/back_button_bar_widget.dart';
import '/components/complayer/complayer_widget.dart';
import '/components/playlist_pop_up/playlist_pop_up_widget.dart';
import '/components/side_nav_playlist/side_nav_playlist_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/testing/n_o_t_used_components/music_page_buttons/music_page_buttons_widget.dart';
import '/backend/schema/structs/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'music_page_all_artists_model.dart';
export 'music_page_all_artists_model.dart';

class MusicPageAllArtistsWidget extends StatefulWidget {
  const MusicPageAllArtistsWidget({
    super.key,
    this.clearBackground,
  });

  final Color? clearBackground;

  @override
  State<MusicPageAllArtistsWidget> createState() =>
      _MusicPageAllArtistsWidgetState();
}

class _MusicPageAllArtistsWidgetState extends State<MusicPageAllArtistsWidget> {
  late MusicPageAllArtistsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MusicPageAllArtistsModel());

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
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 270.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: wrapWithModel(
                      model: _model.sideNavPlaylistModel,
                      updateCallback: () => setState(() {}),
                      child: const SideNavPlaylistWidget(),
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.86,
                                height: 1107.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      '',
                                    ).image,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Flexible(
                                      child: wrapWithModel(
                                        model: _model.backButtonBarModel,
                                        updateCallback: () => setState(() {}),
                                        child: const BackButtonBarWidget(),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.musicPageButtonsModel,
                                      updateCallback: () => setState(() {}),
                                      child: const MusicPageButtonsWidget(),
                                    ),
                                    Divider(
                                      thickness: 1.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent4,
                                    ),
                                    Container(
                                      width: 1386.0,
                                      height: 828.0,
                                      decoration: const BoxDecoration(),
                                      child:
                                          // Grid View: Show All Artist
                                          //
                                          // GridView with dynamically allocated children of type Artist.
                                          //
                                          // Displays the Artist Photo and Artist Name
                                          //
                                          // Clicking on an Artist Image navigates to Artist View of clicked Artist
                                          Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Builder(
                                            builder: (context) {
                                              final allArtists = FFAppState()
                                                  .AllArtists
                                                  .map((e) => e)
                                                  .toList();
                                              return GridView.builder(
                                                padding: EdgeInsets.zero,
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 5,
                                                  crossAxisSpacing: 10.0,
                                                  mainAxisSpacing: 10.0,
                                                  childAspectRatio: 1.0,
                                                ),
                                                scrollDirection: Axis.vertical,
                                                itemCount: allArtists.length,
                                                itemBuilder:
                                                    (context, allArtistsIndex) {
                                                  final allArtistsItem =
                                                      allArtists[
                                                          allArtistsIndex];
                                                  return Container(
                                                    width: 133.0,
                                                    height: 43.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width: 175.0,
                                                          height: 175.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            boxShadow: const [
                                                              BoxShadow(
                                                                blurRadius: 3.0,
                                                                color: Color(
                                                                    0x33000000),
                                                                offset: Offset(
                                                                  2.0,
                                                                  4.0,
                                                                ),
                                                              )
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        87.3),
                                                          ),
                                                          child:
                                                              //  Arist Photo
                                                              //
                                                              // Action: Navigates to Aritst View and passes clicked Artist info
                                                              InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.goNamed(
                                                                'MusicPage_with_artist',
                                                                queryParameters:
                                                                    {
                                                                  'passedArtist':
                                                                      serializeParam(
                                                                    ArtistStruct
                                                                        .maybeFromMap(
                                                                            allArtistsItem),
                                                                    ParamType
                                                                        .DataStruct,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          87.3),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  ArtistStruct.maybeFromMap(
                                                                          allArtistsItem)
                                                                      ?.artistPhotoURL,
                                                                  '0',
                                                                ),
                                                                width: 175.0,
                                                                height: 175.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      20.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              // Artist Name Text
                                                              SelectionArea(
                                                                  child:
                                                                      AutoSizeText(
                                                                valueOrDefault<
                                                                    String>(
                                                                  ArtistStruct.maybeFromMap(
                                                                          allArtistsItem)
                                                                      ?.artistName,
                                                                  '0',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 180,
                                                                  replacement:
                                                                      '…',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodyLargeFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodyLargeFamily),
                                                                    ),
                                                                minFontSize:
                                                                    12.0,
                                                              )),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ),
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
                              child: const ComplayerWidget(),
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

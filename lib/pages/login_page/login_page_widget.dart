import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.usernameTextController ??= TextEditingController();
    _model.usernameFocusNode ??= FocusNode();

    _model.passwordTextController ??= TextEditingController();

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          image: Image.network(
                            'https://i.imgur.com/B1WbR4E.jpeg',
                          ).image,
                        ),
                      ),
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Stack(
                                children: [
                                  Stack(
                                    children: [
                                      Stack(
                                        children: [
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Opacity(
                                                  opacity: 0.0,
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 140.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          const BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                16.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                16.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                0.0),
                                                      ),
                                                    ),
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity: 0.0,
                                                  child: Container(
                                                    width: 100.0,
                                                    height: 100.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(24.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Welcome Back',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .displaySmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .displaySmallFamily),
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      12.0,
                                                                      0.0,
                                                                      24.0),
                                                          child: Text(
                                                            'Let\'s get started by filling out the form below.',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: SizedBox(
                                                            width: 370.0,
                                                            child:
                                                                TextFormField(
                                                              controller: _model
                                                                  .usernameTextController,
                                                              focusNode: _model
                                                                  .usernameFocusNode,
                                                              autofocus: true,
                                                              autofillHints: const [
                                                                AutofillHints
                                                                    .email
                                                              ],
                                                              obscureText:
                                                                  false,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Username',
                                                                labelStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).labelMediumFamily),
                                                                    ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .vibrantLight,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                errorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                focusedErrorBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    width: 2.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                filled: true,
                                                                fillColor: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                              validator: _model
                                                                  .usernameTextControllerValidator
                                                                  .asValidator(
                                                                      context),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: SizedBox(
                                                            width: 370.0,
                                                            child: Autocomplete<
                                                                String>(
                                                              initialValue:
                                                                  const TextEditingValue(),
                                                              optionsBuilder:
                                                                  (textEditingValue) {
                                                                if (textEditingValue
                                                                        .text ==
                                                                    '') {
                                                                  return const Iterable<
                                                                      String>.empty();
                                                                }
                                                                return [
                                                                  'Option 1'
                                                                ].where(
                                                                    (option) {
                                                                  final lowercaseOption =
                                                                      option
                                                                          .toLowerCase();
                                                                  return lowercaseOption.contains(
                                                                      textEditingValue
                                                                          .text
                                                                          .toLowerCase());
                                                                });
                                                              },
                                                              optionsViewBuilder:
                                                                  (context,
                                                                      onSelected,
                                                                      options) {
                                                                return AutocompleteOptionsList(
                                                                  textFieldKey:
                                                                      _model
                                                                          .passwordKey,
                                                                  textController:
                                                                      _model
                                                                          .passwordTextController!,
                                                                  options: options
                                                                      .toList(),
                                                                  onSelected:
                                                                      onSelected,
                                                                  textStyle: FlutterFlowTheme.of(
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
                                                                  textHighlightStyle:
                                                                      const TextStyle(),
                                                                  elevation:
                                                                      4.0,
                                                                  optionBackgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  optionHighlightColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  maxHeight:
                                                                      200.0,
                                                                );
                                                              },
                                                              onSelected: (String
                                                                  selection) {
                                                                setState(() =>
                                                                    _model.passwordSelectedOption =
                                                                        selection);
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus();
                                                              },
                                                              fieldViewBuilder:
                                                                  (
                                                                context,
                                                                textEditingController,
                                                                focusNode,
                                                                onEditingComplete,
                                                              ) {
                                                                _model.passwordFocusNode =
                                                                    focusNode;

                                                                _model.passwordTextController =
                                                                    textEditingController;
                                                                return TextFormField(
                                                                  key: _model
                                                                      .passwordKey,
                                                                  controller:
                                                                      textEditingController,
                                                                  focusNode:
                                                                      focusNode,
                                                                  onEditingComplete:
                                                                      onEditingComplete,
                                                                  autofocus:
                                                                      true,
                                                                  autofillHints: const [
                                                                    AutofillHints
                                                                        .password
                                                                  ],
                                                                  obscureText:
                                                                      !_model
                                                                          .passwordVisibility,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        'Password',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).labelMediumFamily,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .vibrantLight,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    suffixIcon:
                                                                        InkWell(
                                                                      onTap: () =>
                                                                          setState(
                                                                        () => _model.passwordVisibility =
                                                                            !_model.passwordVisibility,
                                                                      ),
                                                                      focusNode:
                                                                          FocusNode(
                                                                              skipTraversal: true),
                                                                      child:
                                                                          Icon(
                                                                        _model.passwordVisibility
                                                                            ? Icons.visibility_outlined
                                                                            : Icons.visibility_off_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
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
                                                                  validator: _model
                                                                      .passwordTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),

                                                        // SIGN-IN BUTTON
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      16.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.signInResult =
                                                                  await ComPlexBackendAPIGroup
                                                                      .signInCall
                                                                      .call(
                                                                username: _model
                                                                    .usernameTextController
                                                                    .text,
                                                                password: _model
                                                                    .passwordTextController
                                                                    .text,
                                                              );
                                                              if ((_model
                                                                      .signInResult
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                GoRouter.of(
                                                                        context)
                                                                    .prepareAuthEvent();
                                                                await authManager
                                                                    .signIn(
                                                                  authenticationToken:
                                                                      ComPlexBackendAPIGroup
                                                                          .signInCall
                                                                          .accessToken(
                                                                    (_model.signInResult
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  refreshToken:
                                                                      ComPlexBackendAPIGroup
                                                                          .signInCall
                                                                          .refreshToken(
                                                                    (_model.signInResult
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  ),
                                                                  tokenExpiration:
                                                                      dateTimeFromSecondsSinceEpoch(
                                                                          valueOrDefault<
                                                                              int>(
                                                                    ComPlexBackendAPIGroup
                                                                        .signInCall
                                                                        .accessExpires(
                                                                      (_model.signInResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    0,
                                                                  )),
                                                                  authUid: ComPlexBackendAPIGroup
                                                                      .signInCall
                                                                      .userID(
                                                                        (_model.signInResult?.jsonBody ??
                                                                            ''),
                                                                      )
                                                                      ?.toString(),
                                                                  userData:
                                                                      AuthDataStruct(
                                                                    accessToken:
                                                                        ComPlexBackendAPIGroup
                                                                            .signInCall
                                                                            .accessToken(
                                                                      (_model.signInResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    accessExpires:
                                                                        ComPlexBackendAPIGroup
                                                                            .signInCall
                                                                            .accessExpires(
                                                                      (_model.signInResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    refreshToken:
                                                                        ComPlexBackendAPIGroup
                                                                            .signInCall
                                                                            .refreshToken(
                                                                      (_model.signInResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    refreshExpires:
                                                                        ComPlexBackendAPIGroup
                                                                            .signInCall
                                                                            .refreshExpires(
                                                                      (_model.signInResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    userID: ComPlexBackendAPIGroup
                                                                        .signInCall
                                                                        .userID(
                                                                      (_model.signInResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    username: ComPlexBackendAPIGroup
                                                                        .signInCall
                                                                        .username(
                                                                      (_model.signInResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    userRole: ComPlexBackendAPIGroup
                                                                        .signInCall
                                                                        .userRole(
                                                                      (_model.signInResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                    loginStatus:
                                                                        ComPlexBackendAPIGroup
                                                                            .signInCall
                                                                            .loginStatus(
                                                                      (_model.signInResult
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ),
                                                                  ),
                                                                );
                                                                FFAppState()
                                                                        .ACCESSTOKEN =
                                                                    ComPlexBackendAPIGroup
                                                                        .signInCall
                                                                        .accessToken(
                                                                  (_model.signInResult
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )!;
                                                                FFAppState()
                                                                        .USERID =
                                                                    ComPlexBackendAPIGroup
                                                                        .signInCall
                                                                        .userID(
                                                                          (_model.signInResult?.jsonBody ??
                                                                              ''),
                                                                        )!
                                                                        .toString();
                                                                FFAppState()
                                                                        .USERNAME =
                                                                    ComPlexBackendAPIGroup
                                                                        .signInCall
                                                                        .username(
                                                                  (_model.signInResult
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )!;
                                                                await Future
                                                                    .wait([
                                                                  Future(
                                                                      () async {
                                                                    _model.getplayhistory =
                                                                        await ComPlexBackendAPIGroup
                                                                            .getPlayhistoryTracksCall
                                                                            .call(
                                                                      token:
                                                                          currentAuthenticationToken,
                                                                    );
                                                                    FFAppState().RecentlyPlayedTracks = ComPlexBackendAPIGroup
                                                                        .getPlayhistoryTracksCall
                                                                        .playhistoryList(
                                                                          (_model.getplayhistory?.jsonBody ??
                                                                              ''),
                                                                        )!
                                                                        .toList()
                                                                        .cast<
                                                                            dynamic>();
                                                                  }),
                                                                  Future(
                                                                      () async {
                                                                    _model.apiSuggestArtistsHomeRequest =
                                                                        await GetSuggestedArtistsCall
                                                                            .call(
                                                                      token:
                                                                          currentAuthenticationToken,
                                                                    );
                                                                    FFAppState()
                                                                        .SuggestedArtists = GetSuggestedArtistsCall
                                                                            .artists(
                                                                      (_model.apiSuggestArtistsHomeRequest
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                        .toList()
                                                                        .cast<
                                                                            dynamic>();
                                                                  }),
                                                                  Future(
                                                                      () async {
                                                                    _model.apiSuggestedAlbumsRequest =
                                                                        await GetSuggestedAlbumsCall
                                                                            .call(
                                                                      token:
                                                                          currentAuthenticationToken,
                                                                    );
                                                                    FFAppState()
                                                                        .SuggestedAlbums = GetSuggestedAlbumsCall
                                                                            .albums(
                                                                      (_model.apiSuggestedAlbumsRequest
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                        .toList()
                                                                        .cast<
                                                                            dynamic>();
                                                                  }),
                                                                  Future(
                                                                      () async {
                                                                    _model.apiallitemsinfoRequest =
                                                                        await GetTracksAlbumsArtistsCall
                                                                            .call(
                                                                      offset: 0,
                                                                      limit:
                                                                          5000,
                                                                      token:
                                                                          currentAuthenticationToken,
                                                                    );
                                                                    FFAppState()
                                                                        .AllTracks = GetTracksAlbumsArtistsCall
                                                                            .tracks(
                                                                      (_model.apiallitemsinfoRequest
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                        .toList()
                                                                        .cast<
                                                                            dynamic>();
                                                                  }),
                                                                  Future(
                                                                      () async {
                                                                    _model.apiAllArtistRequest =
                                                                        await ComPlexBackendAPIGroup
                                                                            .getArtistsCall
                                                                            .call(
                                                                      offset: 0,
                                                                      limit:
                                                                          250,
                                                                      token:
                                                                          currentAuthenticationToken,
                                                                    );
                                                                    FFAppState().AllArtists = ComPlexBackendAPIGroup
                                                                        .getArtistsCall
                                                                        .artists(
                                                                          (_model.apiAllArtistRequest?.jsonBody ??
                                                                              ''),
                                                                        )!
                                                                        .toList()
                                                                        .cast<
                                                                            dynamic>();
                                                                  }),
                                                                  Future(
                                                                      () async {
                                                                    _model.apiGetAlbumsRequest =
                                                                        await GetAlbumsArtistsCall
                                                                            .call(
                                                                      offset: 0,
                                                                      limit:
                                                                          500,
                                                                      token:
                                                                          currentAuthenticationToken,
                                                                    );
                                                                    FFAppState()
                                                                        .AllAlbums = GetAlbumsArtistsCall
                                                                            .albums(
                                                                      (_model.apiGetAlbumsRequest
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                        .toList()
                                                                        .cast<
                                                                            dynamic>();
                                                                  }),
                                                                  Future(
                                                                      () async {
                                                                    _model.apiMyFavoriteTracksRequest =
                                                                        await ComPlexBackendAPIGroup
                                                                            .getMyFavoritesTracksCall
                                                                            .call(
                                                                      token:
                                                                          currentAuthenticationToken,
                                                                    );
                                                                    FFAppState().FavoriteSongs = ComPlexBackendAPIGroup
                                                                        .getMyFavoritesTracksCall
                                                                        .favorites(
                                                                          (_model.apiMyFavoriteTracksRequest?.jsonBody ??
                                                                              ''),
                                                                        )!
                                                                        .toList()
                                                                        .cast<
                                                                            dynamic>();
                                                                  }),
                                                                ]);
                                                                if (Navigator.of(
                                                                        context)
                                                                    .canPop()) {
                                                                  context.pop();
                                                                }
                                                                context
                                                                    .pushNamedAuth(
                                                                  'Test1',
                                                                  context
                                                                      .mounted,
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        const TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                    ),
                                                                  },
                                                                );
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: const Text(
                                                                          'ERROR'),
                                                                      content: Text((_model.signInResult?.jsonBody ??
                                                                              '')
                                                                          .toString()),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              const Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                              }

                                                              setState(() {});
                                                            },
                                                            text: 'Sign In',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 370.0,
                                                              height: 44.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .vibrantLight,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                              elevation: 3.0,
                                                              borderSide:
                                                                  const BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                          ),
                                                        ),

                                                        // You will have to add an action on this rich text to go to your login page.
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      12.0,
                                                                      0.0,
                                                                      12.0),
                                                          child: Semantics(
                                                            label:
                                                                'goToSignUpPage',
                                                            child: InkWell(
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
                                                                context.pushNamed(
                                                                    'CreateAccountPage');
                                                              },
                                                              child: RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    const TextSpan(
                                                                      text:
                                                                          'Don\'t have an account? ',
                                                                      style:
                                                                          TextStyle(),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          ' Sign Up here',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).vibrantLight,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    )
                                                                  ],
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
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(-0.01, -1.2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://i.ibb.co/VpQk98R/complex-long.png',
                    width: 500.0,
                    height: 400.0,
                    fit: BoxFit.cover,
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

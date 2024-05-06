import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  ComPlexAuthUser? initialUser;
  ComPlexAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(ComPlexAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? const HomePageWidget()
          : const CreateAccountPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const HomePageWidget()
              : const CreateAccountPageWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          requireAuth: true,
          builder: (context, params) => const HomePageWidget(),
        ),
        FFRoute(
          name: 'CreateAccountPage',
          path: '/createAccountPage',
          builder: (context, params) => const CreateAccountPageWidget(),
        ),
        FFRoute(
          name: 'LoginPage',
          path: '/loginPage',
          builder: (context, params) => const LoginPageWidget(),
        ),
        FFRoute(
          name: 'FavoritePage',
          path: '/favoritePage',
          requireAuth: true,
          builder: (context, params) => const FavoritePageWidget(),
        ),
        FFRoute(
          name: 'MusicPage',
          path: '/musicPage',
          requireAuth: true,
          builder: (context, params) => MusicPageWidget(
            clearBackground: params.getParam(
              'clearBackground',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'SettingsPage',
          path: '/settingsPage',
          requireAuth: true,
          builder: (context, params) => const SettingsPageWidget(),
        ),
        FFRoute(
          name: 'images_testing',
          path: '/imagesTesting',
          requireAuth: true,
          builder: (context, params) => const ImagesTestingWidget(),
        ),
        FFRoute(
          name: 'tables_page',
          path: '/tablesPage',
          requireAuth: true,
          builder: (context, params) => const TablesPageWidget(),
        ),
        FFRoute(
          name: 'HomePageWithPopup',
          path: '/homePageWithPopup',
          requireAuth: true,
          builder: (context, params) => const HomePageWithPopupWidget(),
        ),
        FFRoute(
          name: 'MusicPage_with_artist',
          path: '/musicPageWithArtist',
          requireAuth: true,
          builder: (context, params) => MusicPageWithArtistWidget(
            passedArtist: params.getParam(
              'passedArtist',
              ParamType.DataStruct,
              isList: false,
              structBuilder: ArtistStruct.fromSerializableMap,
            ),
          ),
        ),
        FFRoute(
          name: 'music_allSongs_WORKSCopy',
          path: '/musicAllSongsWORKSCopy',
          requireAuth: true,
          builder: (context, params) => const MusicAllSongsWORKSCopyWidget(),
        ),
        FFRoute(
          name: 'music_playerTest',
          path: '/musicPlayerTest',
          requireAuth: true,
          builder: (context, params) => const MusicPlayerTestWidget(),
        ),
        FFRoute(
          name: 'PlaylistAddTrackOLD',
          path: '/playlistAddTrackOLD',
          requireAuth: true,
          builder: (context, params) => PlaylistAddTrackOLDWidget(
            playlistName: params.getParam(
              'playlistName',
              ParamType.String,
            ),
            playlistID: params.getParam(
              'playlistID',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'searchBox_testPage',
          path: '/searchBoxTestPage',
          requireAuth: true,
          builder: (context, params) => const SearchBoxTestPageWidget(),
        ),
        FFRoute(
          name: 'AdminPage',
          path: '/adminPage',
          requireAuth: true,
          builder: (context, params) => const AdminPageWidget(),
        ),
        FFRoute(
          name: 'HomePagePlaylist',
          path: '/homePagePlaylist',
          requireAuth: true,
          builder: (context, params) => const HomePagePlaylistWidget(),
        ),
        FFRoute(
          name: 'PlaylistAddTrack',
          path: '/playlistAddTrack',
          requireAuth: true,
          builder: (context, params) => PlaylistAddTrackWidget(
            playlistName: params.getParam(
              'playlistName',
              ParamType.String,
            ),
            playlistID: params.getParam(
              'playlistID',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'mplayer',
          path: '/mplayer',
          requireAuth: true,
          builder: (context, params) => const MplayerWidget(),
        ),
        FFRoute(
          name: 'MusicPage_with_album',
          path: '/musicPageWithAlbum',
          requireAuth: true,
          builder: (context, params) => MusicPageWithAlbumWidget(
            passedAlbumID: params.getParam(
              'passedAlbumID',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'MusicPage_with_genres',
          path: '/musicPageWithGenres',
          requireAuth: true,
          builder: (context, params) => MusicPageWithGenresWidget(
            clearBackground: params.getParam(
              'clearBackground',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'MusicPage_with_songFilter',
          path: '/musicPageWithSongFilter',
          requireAuth: true,
          builder: (context, params) => MusicPageWithSongFilterWidget(
            clearBackground: params.getParam(
              'clearBackground',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'MusicPage_all_artists',
          path: '/musicPageAllArtists',
          requireAuth: true,
          builder: (context, params) => MusicPageAllArtistsWidget(
            clearBackground: params.getParam(
              'clearBackground',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'MusicPage_all_albums',
          path: '/musicPageAllAlbums',
          requireAuth: true,
          builder: (context, params) => MusicPageAllAlbumsWidget(
            clearBackground: params.getParam(
              'clearBackground',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'justPlay',
          path: '/justPlay',
          builder: (context, params) => const JustPlayWidget(),
        ),
        FFRoute(
          name: 'MusicPage_all_songs',
          path: '/musicPageAllSongs',
          requireAuth: true,
          builder: (context, params) => MusicPageAllSongsWidget(
            clearBackground: params.getParam(
              'clearBackground',
              ParamType.Color,
            ),
          ),
        ),
        FFRoute(
          name: 'HomePagePlaylistCopy',
          path: '/homePagePlaylistCopy',
          requireAuth: true,
          builder: (context, params) => const HomePagePlaylistCopyWidget(),
        ),
        FFRoute(
          name: 'Test',
          path: '/test',
          builder: (context, params) => const TestWidget(),
        ),
        FFRoute(
          name: 'TestPageView',
          path: '/testPageView',
          builder: (context, params) => const TestPageViewWidget(),
        ),
        FFRoute(
          name: 'allsongstest',
          path: '/allsongstest',
          requireAuth: true,
          builder: (context, params) => const AllsongstestWidget(),
        ),
        FFRoute(
          name: 'HomePageCopy',
          path: '/homePageCopy',
          requireAuth: true,
          builder: (context, params) => const HomePageCopyWidget(),
        ),
        FFRoute(
          name: 'FavoritePageCopy2',
          path: '/favoritePageCopy2',
          requireAuth: true,
          builder: (context, params) => const FavoritePageCopy2Widget(),
        ),
        FFRoute(
          name: 'HomePageCopy2',
          path: '/homePageCopy2',
          requireAuth: true,
          builder: (context, params) => const HomePageCopy2Widget(),
        ),
        FFRoute(
          name: 'MusicPageCopy',
          path: '/musicPageCopy',
          requireAuth: true,
          builder: (context, params) => MusicPageCopyWidget(
            clearBackground: params.getParam(
              'clearBackground',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'FavoritePageCopy',
          path: '/favoritePageCopy',
          requireAuth: true,
          builder: (context, params) => const FavoritePageCopyWidget(),
        ),
        FFRoute(
          name: 'PlayPage',
          path: '/playPage',
          requireAuth: true,
          builder: (context, params) => const PlayPageWidget(),
        ),
        FFRoute(
          name: 'dashboard2',
          path: '/dashboard2',
          builder: (context, params) => const Dashboard2Widget(),
        ),
        FFRoute(
          name: 'dashboard',
          path: '/dashboard',
          builder: (context, params) => const DashboardWidget(),
        ),
        FFRoute(
          name: 'Test1',
          path: '/test1',
          builder: (context, params) => const Test1Widget(),
        ),
        FFRoute(
          name: 'Test2',
          path: '/test2',
          builder: (context, params) => const Test2Widget(),
        ),
        FFRoute(
          name: 'Test3',
          path: '/test3',
          builder: (context, params) => const Test3Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/createAccountPage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitFadingFour(
                      color: FlutterFlowTheme.of(context).primary100,
                      size: 50.0,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

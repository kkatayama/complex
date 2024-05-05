import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Com-Plex Backend API Group Code

class ComPlexBackendAPIGroup {
  static String baseUrl = 'https://api.mangoboat.tv';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
  static CreateUserCall createUserCall = CreateUserCall();
  static SignInCall signInCall = SignInCall();
  static SignOutCall signOutCall = SignOutCall();
  static RenewTokenCall renewTokenCall = RenewTokenCall();
  static GetMyUserCall getMyUserCall = GetMyUserCall();
  static GetMyUserDetailsCall getMyUserDetailsCall = GetMyUserDetailsCall();
  static GetMyUserDetailsTracksCall getMyUserDetailsTracksCall =
      GetMyUserDetailsTracksCall();
  static EditMyUsernameCall editMyUsernameCall = EditMyUsernameCall();
  static ChangeMyPasswordCall changeMyPasswordCall = ChangeMyPasswordCall();
  static DeleteMyUserCall deleteMyUserCall = DeleteMyUserCall();
  static CreateMyPlaylistCall createMyPlaylistCall = CreateMyPlaylistCall();
  static GetMyPlaylistsCall getMyPlaylistsCall = GetMyPlaylistsCall();
  static GetMyPlaylistsTracksCall getMyPlaylistsTracksCall =
      GetMyPlaylistsTracksCall();
  static RenameMyPlaylistPlaylistIDCall renameMyPlaylistPlaylistIDCall =
      RenameMyPlaylistPlaylistIDCall();
  static GetMyPlaylistPlaylistIDCall getMyPlaylistPlaylistIDCall =
      GetMyPlaylistPlaylistIDCall();
  static DeleteMyPlaylistPlaylistIDCall deleteMyPlaylistPlaylistIDCall =
      DeleteMyPlaylistPlaylistIDCall();
  static AddTrackMyPlaylistPlaylistIDCall addTrackMyPlaylistPlaylistIDCall =
      AddTrackMyPlaylistPlaylistIDCall();
  static GetMyPlaylistPlaylistIDTracksCall getMyPlaylistPlaylistIDTracksCall =
      GetMyPlaylistPlaylistIDTracksCall();
  static DeleteMyPlaylistPlaylistIDTracksCall
      deleteMyPlaylistPlaylistIDTracksCall =
      DeleteMyPlaylistPlaylistIDTracksCall();
  static GetMyPlayHistoryCall getMyPlayHistoryCall = GetMyPlayHistoryCall();
  static AddTrackMyPlayHistoryCall addTrackMyPlayHistoryCall =
      AddTrackMyPlayHistoryCall();
  static GetMyPlayHistoryTracksCall getMyPlayHistoryTracksCall =
      GetMyPlayHistoryTracksCall();
  static GetMyPlayhistoryPlayhistoryIDCall getMyPlayhistoryPlayhistoryIDCall =
      GetMyPlayhistoryPlayhistoryIDCall();
  static GetMyFavoritesCall getMyFavoritesCall = GetMyFavoritesCall();
  static AddTrackMyFavoritesCall addTrackMyFavoritesCall =
      AddTrackMyFavoritesCall();
  static DeleteMyFavoritesFavoriteIDCall deleteMyFavoritesFavoriteIDCall =
      DeleteMyFavoritesFavoriteIDCall();
  static GetMyFavoriteFavoriteIDCall getMyFavoriteFavoriteIDCall =
      GetMyFavoriteFavoriteIDCall();
  static GetMyFavoritesTracksCall getMyFavoritesTracksCall =
      GetMyFavoritesTracksCall();
  static GetUsersCall getUsersCall = GetUsersCall();
  static GetUserUserIDCall getUserUserIDCall = GetUserUserIDCall();
  static EditUserUserIDCall editUserUserIDCall = EditUserUserIDCall();
  static DeleteUserUserIDCall deleteUserUserIDCall = DeleteUserUserIDCall();
  static GetArtistsCall getArtistsCall = GetArtistsCall();
  static GetArtistArtistIDAlbumsCall getArtistArtistIDAlbumsCall =
      GetArtistArtistIDAlbumsCall();
  static GetArtistArtistIDAlbumAlbumIDTracksCall
      getArtistArtistIDAlbumAlbumIDTracksCall =
      GetArtistArtistIDAlbumAlbumIDTracksCall();
  static GetArtistArtistIDAlbumsTracksCall getArtistArtistIDAlbumsTracksCall =
      GetArtistArtistIDAlbumsTracksCall();
  static GetAlbumsCall getAlbumsCall = GetAlbumsCall();
  static GetAlbumAlbumIDCall getAlbumAlbumIDCall = GetAlbumAlbumIDCall();
  static GetAlbumAlbumIDTracksCall getAlbumAlbumIDTracksCall =
      GetAlbumAlbumIDTracksCall();
  static GetTracksCall getTracksCall = GetTracksCall();
  static GetTrackTrackIDCall getTrackTrackIDCall = GetTrackTrackIDCall();
  static CreatePlaylistCall createPlaylistCall = CreatePlaylistCall();
  static GetPlaylistsCall getPlaylistsCall = GetPlaylistsCall();
  static GetPlaylistsTracksCall getPlaylistsTracksCall =
      GetPlaylistsTracksCall();
  static RenamePlaylistPlaylistIDCall renamePlaylistPlaylistIDCall =
      RenamePlaylistPlaylistIDCall();
  static GetPlaylistPlaylistIDCall getPlaylistPlaylistIDCall =
      GetPlaylistPlaylistIDCall();
  static DeletePlaylistPlaylistIDCall deletePlaylistPlaylistIDCall =
      DeletePlaylistPlaylistIDCall();
  static AddTrackPlaylistPlaylistIDCall addTrackPlaylistPlaylistIDCall =
      AddTrackPlaylistPlaylistIDCall();
  static GetPlaylistPlaylistIDTracksCall getPlaylistPlaylistIDTracksCall =
      GetPlaylistPlaylistIDTracksCall();
  static DeletePlaylistPlaylistIDTracksCall deletePlaylistPlaylistIDTracksCall =
      DeletePlaylistPlaylistIDTracksCall();
  static GetPlayhistoryCall getPlayhistoryCall = GetPlayhistoryCall();
  static AddPlayhistoryTrackIDCall addPlayhistoryTrackIDCall =
      AddPlayhistoryTrackIDCall();
  static GetPlayhistoryTracksCall getPlayhistoryTracksCall =
      GetPlayhistoryTracksCall();
  static GetPlayhistoryPlayhistoryIDCall getPlayhistoryPlayhistoryIDCall =
      GetPlayhistoryPlayhistoryIDCall();
  static GetImagesCall getImagesCall = GetImagesCall();
  static GetImages2Call getImages2Call = GetImages2Call();
  static GetImageImageIDCall getImageImageIDCall = GetImageImageIDCall();
  static SignUpCall signUpCall = SignUpCall();
  static LoginCall loginCall = LoginCall();
  static RefreshTokenCall refreshTokenCall = RefreshTokenCall();
  static AuthMeCall authMeCall = AuthMeCall();
  static AuthMePlaylistsCall authMePlaylistsCall = AuthMePlaylistsCall();
  static TestAccessTokenCall testAccessTokenCall = TestAccessTokenCall();
  static TestRefreshTokenCall testRefreshTokenCall = TestRefreshTokenCall();
  static LogoutCall logoutCall = LogoutCall();
}

class CreateUserCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password1 = '',
    String? password2 = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "password1": "$password1",
  "password2": "$password2"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_user',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/create-user',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? userRole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userRole''',
      ));
  String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.password''',
      ));
  bool? loginStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.loginStatus''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.userID''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
}

class SignInCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "username": "$username",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sign_in',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/sign-in',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  int? accessExpires(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.access_expires''',
      ));
  String? refreshToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
  int? refreshExpires(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.refresh_expires''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.userID''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  String? userRole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userRole''',
      ));
  bool? loginStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.loginStatus''',
      ));
}

class SignOutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'sign_out',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/sign-out',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RenewTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "token": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'renew_token',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/renew-token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyUserCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_user',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/user-info',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.userID''',
      ));
  String? userRole(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.userRole''',
      ));
  String? username(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.username''',
      ));
  String? password(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.password''',
      ));
  bool? loginStatus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.loginStatus''',
      ));
}

class GetMyUserDetailsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_userDetails',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/user-details',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyUserDetailsTracksCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_userDetails_tracks',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/user-details-tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditMyUsernameCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "username": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'edit_my_username',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/username',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ChangeMyPasswordCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "oldPassword": "",
  "newPassword": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'change_my_password',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/password',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMyUserCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delete_my_user',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/user',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateMyPlaylistCall {
  Future<ApiCallResponse> call({
    String? playlistName = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "playlistName": "$playlistName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_my_playlist',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/playlist',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? playlistLength(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.playlistLength''',
      ));
  int? playlistID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.playlistID''',
      ));
  String? creationDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.creationDate''',
      ));
  String? playlistName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.playlistName''',
      ));
  int? userID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.userID''',
      ));
}

class GetMyPlaylistsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_playlists',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/playlists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? playlists(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetMyPlaylistsTracksCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_playlists_tracks',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/playlists/tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RenameMyPlaylistPlaylistIDCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "playlistName": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'rename_my_playlist_playlistID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/playlist/$playlistID',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyPlaylistPlaylistIDCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_playlist_playlistID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/playlist/$playlistID',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMyPlaylistPlaylistIDCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delete_my_playlist_playlistID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/playlist/$playlistID',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? playlistName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.playlistName''',
      ));
}

class AddTrackMyPlaylistPlaylistIDCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    int? trackID,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "trackID": $trackID
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTrack_my_playlist_playlistID',
      apiUrl:
          '${ComPlexBackendAPIGroup.baseUrl}/my/playlist/$playlistID/tracks',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? trackName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.trackName''',
      ));
}

class GetMyPlaylistPlaylistIDTracksCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_playlist_playlistID_tracks',
      apiUrl:
          '${ComPlexBackendAPIGroup.baseUrl}/my/playlist/$playlistID/tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? playlistTracks(dynamic response) => getJsonField(
        response,
        r'''$.tracks''',
        true,
      ) as List?;
  int? playlistLength(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.playlistLength''',
      ));
  String? creationDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.creationDate''',
      ));
}

class DeleteMyPlaylistPlaylistIDTracksCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    int? playlistTrackID,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "playlistTrackID": $playlistTrackID
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'delete_my_playlist_playlistID_tracks',
      apiUrl:
          '${ComPlexBackendAPIGroup.baseUrl}/my/playlist/$playlistID/tracks',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: true,
    );
  }

  String? trackName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.trackName''',
      ));
}

class GetMyPlayHistoryCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_play_history',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/play-history',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddTrackMyPlayHistoryCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "trackID": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTrack_my_play_history',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/play-history',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyPlayHistoryTracksCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_play_history_tracks',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/play-history-tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? playhistoryTracks(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  List<String>? tracks(dynamic response) => (getJsonField(
        response,
        r'''$[:].trackURL''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetMyPlayhistoryPlayhistoryIDCall {
  Future<ApiCallResponse> call({
    int? playhistoryID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_playhistory_playhistoryID',
      apiUrl:
          '${ComPlexBackendAPIGroup.baseUrl}/my/play-history/$playhistoryID',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyFavoritesCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_favorites',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/favorites',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddTrackMyFavoritesCall {
  Future<ApiCallResponse> call({
    int? trackID,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "trackID": $trackID
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTrack_my_favorites',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/favorites',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteMyFavoritesFavoriteIDCall {
  Future<ApiCallResponse> call({
    int? favoriteID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delete_my_favorites_favoriteID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/favorites/$favoriteID',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyFavoriteFavoriteIDCall {
  Future<ApiCallResponse> call({
    int? favoriteID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_favorite_favoriteID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/favorites/$favoriteID',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMyFavoritesTracksCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_my_favorites_tracks',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/my/favorites-tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? favorites(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetUsersCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_users',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/users',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? userID(dynamic response) => (getJsonField(
        response,
        r'''$[:].userID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? userRole(dynamic response) => (getJsonField(
        response,
        r'''$[:].userRole''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? username(dynamic response) => (getJsonField(
        response,
        r'''$[:].username''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? password(dynamic response) => (getJsonField(
        response,
        r'''$[:].password''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<bool>? loginStatus(dynamic response) => (getJsonField(
        response,
        r'''$[:].loginStatus''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  dynamic users(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetUserUserIDCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_user_userID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/user/$userID',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditUserUserIDCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "username": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'edit_user_userID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/user/$userID',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteUserUserIDCall {
  Future<ApiCallResponse> call({
    int? userID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delete_user_userID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/user/$userID',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetArtistsCall {
  Future<ApiCallResponse> call({
    int? offset,
    int? limit,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_artists',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/artists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? artistID(dynamic response) => (getJsonField(
        response,
        r'''$[:].artistID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? artistName(dynamic response) => (getJsonField(
        response,
        r'''$[:].artistName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? artistPhotoURL(dynamic response) => (getJsonField(
        response,
        r'''$[:].artistPhotoURL''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? artists(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetArtistArtistIDAlbumsCall {
  Future<ApiCallResponse> call({
    int? artistID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_artist_artistID_albums',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/artist/$artistID/albums',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetArtistArtistIDAlbumAlbumIDTracksCall {
  Future<ApiCallResponse> call({
    int? artistID,
    int? albumID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_artist_artistID_album_albumID_tracks',
      apiUrl:
          '${ComPlexBackendAPIGroup.baseUrl}/artist/$artistID/album/$albumID/tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetArtistArtistIDAlbumsTracksCall {
  Future<ApiCallResponse> call({
    int? artistID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_artist_artistID_albums_tracks',
      apiUrl:
          '${ComPlexBackendAPIGroup.baseUrl}/artist/$artistID/albums-tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  List? albums(dynamic response) => getJsonField(
        response,
        r'''$.albums''',
        true,
      ) as List?;
}

class GetAlbumsCall {
  Future<ApiCallResponse> call({
    int? offset,
    int? limit,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_albums',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/albums',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAlbumAlbumIDCall {
  Future<ApiCallResponse> call({
    int? albumID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_album_albumID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/album/$albumID/tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? albumID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.albumID''',
      ));
  String? albumName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.albumName''',
      ));
  int? numSongs(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.numSongs''',
      ));
  int? year(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.year''',
      ));
  String? albumCoverURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.albumCoverURL''',
      ));
  dynamic artist(dynamic response) => getJsonField(
        response,
        r'''$.artist''',
      );
  List? tracks(dynamic response) => getJsonField(
        response,
        r'''$.tracks''',
        true,
      ) as List?;
}

class GetAlbumAlbumIDTracksCall {
  Future<ApiCallResponse> call({
    int? albumID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAlbumAlbumIDTracks',
      apiUrl:
          '${ComPlexBackendAPIGroup.baseUrl}/album/$albumID/tracks-expanded',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  int? albumID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.albumID''',
      ));
  String? albumName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.albumName''',
      ));
  int? numSongs(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.numSongs''',
      ));
  int? year(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.year''',
      ));
  String? albumCoverURL(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.albumCoverURL''',
      ));
  dynamic artist(dynamic response) => getJsonField(
        response,
        r'''$.artist''',
      );
  List? tracks(dynamic response) => getJsonField(
        response,
        r'''$.tracks''',
        true,
      ) as List?;
}

class GetTracksCall {
  Future<ApiCallResponse> call({
    int? offset,
    int? limit,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_tracks',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? trackID(dynamic response) => (getJsonField(
        response,
        r'''$[:].trackID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? trackName(dynamic response) => (getJsonField(
        response,
        r'''$[:].trackName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? trackNumber(dynamic response) => (getJsonField(
        response,
        r'''$[:].trackNumber''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? trackURL(dynamic response) => (getJsonField(
        response,
        r'''$[:].trackURL''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? genre(dynamic response) => (getJsonField(
        response,
        r'''$[:].genre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? recordedDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].recordedDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? duration(dynamic response) => (getJsonField(
        response,
        r'''$[:].duration''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? albumID(dynamic response) => (getJsonField(
        response,
        r'''$[:].albumID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? artistID(dynamic response) => (getJsonField(
        response,
        r'''$[:].artistID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetTrackTrackIDCall {
  Future<ApiCallResponse> call({
    int? trackID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_track_trackID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/track/$trackID',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatePlaylistCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "userID": 0,
  "playlistName": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create_playlist',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/playlist',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPlaylistsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_playlists',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/playlists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPlaylistsTracksCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_playlists_tracks',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/playlists/tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RenamePlaylistPlaylistIDCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "playlistName": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'rename_playlist_playlistID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/playlist/$playlistID',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPlaylistPlaylistIDCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_playlist_playlistID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/playlist/$playlistID',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePlaylistPlaylistIDCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delete_playlist_playlistID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/playlist/$playlistID',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddTrackPlaylistPlaylistIDCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "trackID": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTrack_playlist_playlistID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/playlist/$playlistID/tracks',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPlaylistPlaylistIDTracksCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_playlist_playlistID_tracks',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/playlist/$playlistID/tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DeletePlaylistPlaylistIDTracksCall {
  Future<ApiCallResponse> call({
    int? playlistID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'delete_playlist_playlistID_tracks',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/playlist/$playlistID/tracks',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPlayhistoryCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_playhistory',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/play-history-all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddPlayhistoryTrackIDCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "userID": 0,
  "trackID": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'add_playhistory_trackID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/play-history',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPlayhistoryTracksCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_playhistory_tracks',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/play-history-tracks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  List? playhistoryList(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetPlayhistoryPlayhistoryIDCall {
  Future<ApiCallResponse> call({
    int? playhistoryID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_playhistory_playhistoryID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/play-history/$playhistoryID',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetImagesCall {
  Future<ApiCallResponse> call({
    int? offset,
    int? limit,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_images',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/images',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? imageID(dynamic response) => (getJsonField(
        response,
        r'''$[:].imageID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? resolution(dynamic response) => (getJsonField(
        response,
        r'''$[:].resolution''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imageURL(dynamic response) => (getJsonField(
        response,
        r'''$[:].imageURL''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imageType(dynamic response) => (getJsonField(
        response,
        r'''$[:].imageType''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? artistID(dynamic response) => (getJsonField(
        response,
        r'''$[:].artistID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? albumID(dynamic response) => (getJsonField(
        response,
        r'''$[:].albumID''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  dynamic images(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetImages2Call {
  Future<ApiCallResponse> call({
    int? offset,
    int? limit,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_images2',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/images2',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetImageImageIDCall {
  Future<ApiCallResponse> call({
    int? imageID,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'get_image_imageID',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/image/$imageID',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SignUpCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    const ffApiRequestBody = '''
{
  "username": "",
  "password1": "",
  "password2": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sign_up',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/sign-up',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class RefreshTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'refresh_token',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/refresh-token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthMeCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'auth_me',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthMePlaylistsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'auth_me_playlists',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/auth/me/playlists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TestAccessTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'test_access_token',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/test-access-token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TestRefreshTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'test_refresh_token',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/test-refresh-token',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LogoutCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'logout',
      apiUrl: '${ComPlexBackendAPIGroup.baseUrl}/logout',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Com-Plex Backend API Group Code

class GetAlbumsArtistsCall {
  static Future<ApiCallResponse> call({
    int? offset = 0,
    int? limit = 8,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAlbumsArtists',
      apiUrl: 'https://api.mangoboat.tv/albums-artists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  static List? albums(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetTracksAlbumsArtistsCall {
  static Future<ApiCallResponse> call({
    int? offset = 0,
    int? limit = 8,
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getTracksAlbumsArtists',
      apiUrl: 'https://api.mangoboat.tv/tracks-albums-artists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  static dynamic tracks(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class SearchTracksCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? term = '',
  }) async {
    final ffApiRequestBody = '''
{
  "term": "$term"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchTracks',
      apiUrl: 'https://api.mangoboat.tv/search-tracks',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: true,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic tracks(dynamic response) => getJsonField(
        response,
        r'''$''',
      );
}

class GetSuggestedAlbumsCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSuggestedAlbums',
      apiUrl: 'https://api.mangoboat.tv/suggested-albums-all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? albums(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class GetSuggestedArtistsCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getSuggestedArtists ',
      apiUrl: 'https://api.mangoboat.tv/suggested-artists-all',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? artists(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class StreamFileCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? range = 'bytes=0-',
    String? name = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'streamFile',
      apiUrl: 'https://api.mangoboat.tv/music/$name',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
        'Range': '$range',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}

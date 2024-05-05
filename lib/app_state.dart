import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ACCESSTOKEN = prefs.getString('ff_ACCESSTOKEN') ?? _ACCESSTOKEN;
    });
    _safeInit(() {
      _USERID = prefs.getString('ff_USERID') ?? _USERID;
    });
    _safeInit(() {
      _USERNAME = prefs.getString('ff_USERNAME') ?? _USERNAME;
    });
    _safeInit(() {
      _CURRENTRACK = prefs.getString('ff_CURRENTRACK') ?? _CURRENTRACK;
    });
    _safeInit(() {
      _CURRENTARTIST = prefs.getString('ff_CURRENTARTIST') ?? _CURRENTARTIST;
    });
    _safeInit(() {
      _TRACKURL = prefs.getString('ff_TRACKURL') ?? _TRACKURL;
    });
    _safeInit(() {
      _ALBUMCOVER = prefs.getString('ff_ALBUMCOVER') ?? _ALBUMCOVER;
    });
    _safeInit(() {
      _NavButtonClick = _colorFromIntValue(prefs.getInt('ff_NavButtonClick')) ??
          _NavButtonClick;
    });
    _safeInit(() {
      _CREATEPLAYLISTPOPUP =
          prefs.getInt('ff_CREATEPLAYLISTPOPUP') ?? _CREATEPLAYLISTPOPUP;
    });
    _safeInit(() {
      _MTRACKS = prefs.getStringList('ff_MTRACKS') ?? _MTRACKS;
    });
    _safeInit(() {
      _PAGENAME = prefs.getString('ff_PAGENAME') ?? _PAGENAME;
    });
    _safeInit(() {
      _kickstart = prefs.getBool('ff_kickstart') ?? _kickstart;
    });
    _safeInit(() {
      _RecentlyPlayedTracks =
          prefs.getStringList('ff_RecentlyPlayedTracks')?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _RecentlyPlayedTracks;
    });
    _safeInit(() {
      _SuggestedArtists = prefs.getStringList('ff_SuggestedArtists')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _SuggestedArtists;
    });
    _safeInit(() {
      _SuggestedAlbums = prefs.getStringList('ff_SuggestedAlbums')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _SuggestedAlbums;
    });
    _safeInit(() {
      _AllArtists = prefs.getStringList('ff_AllArtists')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _AllArtists;
    });
    _safeInit(() {
      _AllAlbums = prefs.getStringList('ff_AllAlbums')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _AllAlbums;
    });
    _safeInit(() {
      _AllTracks = prefs.getStringList('ff_AllTracks')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _AllTracks;
    });
    _safeInit(() {
      _AllGenres = prefs.getStringList('ff_AllGenres')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _AllGenres;
    });
    _safeInit(() {
      _FavoriteSongs = prefs.getStringList('ff_FavoriteSongs')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _FavoriteSongs;
    });
    _safeInit(() {
      _Images = prefs.getStringList('ff_Images')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _Images;
    });
    _safeInit(() {
      _PlayNowURL = prefs.getString('ff_PlayNowURL') ?? _PlayNowURL;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _ACCESSTOKEN = '';
  String get ACCESSTOKEN => _ACCESSTOKEN;
  set ACCESSTOKEN(String value) {
    _ACCESSTOKEN = value;
    prefs.setString('ff_ACCESSTOKEN', value);
  }

  String _USERID = '';
  String get USERID => _USERID;
  set USERID(String value) {
    _USERID = value;
    prefs.setString('ff_USERID', value);
  }

  String _USERNAME = '';
  String get USERNAME => _USERNAME;
  set USERNAME(String value) {
    _USERNAME = value;
    prefs.setString('ff_USERNAME', value);
  }

  String _CURRENTRACK = '';
  String get CURRENTRACK => _CURRENTRACK;
  set CURRENTRACK(String value) {
    _CURRENTRACK = value;
    prefs.setString('ff_CURRENTRACK', value);
  }

  String _CURRENTARTIST = '';
  String get CURRENTARTIST => _CURRENTARTIST;
  set CURRENTARTIST(String value) {
    _CURRENTARTIST = value;
    prefs.setString('ff_CURRENTARTIST', value);
  }

  String _TRACKURL = '';
  String get TRACKURL => _TRACKURL;
  set TRACKURL(String value) {
    _TRACKURL = value;
    prefs.setString('ff_TRACKURL', value);
  }

  String _ALBUMCOVER = '';
  String get ALBUMCOVER => _ALBUMCOVER;
  set ALBUMCOVER(String value) {
    _ALBUMCOVER = value;
    prefs.setString('ff_ALBUMCOVER', value);
  }

  Color _NavButtonClick = Colors.transparent;
  Color get NavButtonClick => _NavButtonClick;
  set NavButtonClick(Color value) {
    _NavButtonClick = value;
    prefs.setInt('ff_NavButtonClick', value.value);
  }

  int _CREATEPLAYLISTPOPUP = 0;
  int get CREATEPLAYLISTPOPUP => _CREATEPLAYLISTPOPUP;
  set CREATEPLAYLISTPOPUP(int value) {
    _CREATEPLAYLISTPOPUP = value;
    prefs.setInt('ff_CREATEPLAYLISTPOPUP', value);
  }

  String _ACTIVEPLAYLIST = '';
  String get ACTIVEPLAYLIST => _ACTIVEPLAYLIST;
  set ACTIVEPLAYLIST(String value) {
    _ACTIVEPLAYLIST = value;
  }

  int _ACTIVEPLAYLISTID = 0;
  int get ACTIVEPLAYLISTID => _ACTIVEPLAYLISTID;
  set ACTIVEPLAYLISTID(int value) {
    _ACTIVEPLAYLISTID = value;
  }

  String _currentURL = '';
  String get currentURL => _currentURL;
  set currentURL(String value) {
    _currentURL = value;
  }

  List<String> _MTRACKS = [];
  List<String> get MTRACKS => _MTRACKS;
  set MTRACKS(List<String> value) {
    _MTRACKS = value;
    prefs.setStringList('ff_MTRACKS', value);
  }

  void addToMTRACKS(String value) {
    _MTRACKS.add(value);
    prefs.setStringList('ff_MTRACKS', _MTRACKS);
  }

  void removeFromMTRACKS(String value) {
    _MTRACKS.remove(value);
    prefs.setStringList('ff_MTRACKS', _MTRACKS);
  }

  void removeAtIndexFromMTRACKS(int index) {
    _MTRACKS.removeAt(index);
    prefs.setStringList('ff_MTRACKS', _MTRACKS);
  }

  void updateMTRACKSAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _MTRACKS[index] = updateFn(_MTRACKS[index]);
    prefs.setStringList('ff_MTRACKS', _MTRACKS);
  }

  void insertAtIndexInMTRACKS(int index, String value) {
    _MTRACKS.insert(index, value);
    prefs.setStringList('ff_MTRACKS', _MTRACKS);
  }

  String _PAGENAME = '';
  String get PAGENAME => _PAGENAME;
  set PAGENAME(String value) {
    _PAGENAME = value;
    prefs.setString('ff_PAGENAME', value);
  }

  bool _kickstart = false;
  bool get kickstart => _kickstart;
  set kickstart(bool value) {
    _kickstart = value;
    prefs.setBool('ff_kickstart', value);
  }

  List<dynamic> _RecentlyPlayedTracks = [];
  List<dynamic> get RecentlyPlayedTracks => _RecentlyPlayedTracks;
  set RecentlyPlayedTracks(List<dynamic> value) {
    _RecentlyPlayedTracks = value;
    prefs.setStringList(
        'ff_RecentlyPlayedTracks', value.map((x) => jsonEncode(x)).toList());
  }

  void addToRecentlyPlayedTracks(dynamic value) {
    _RecentlyPlayedTracks.add(value);
    prefs.setStringList('ff_RecentlyPlayedTracks',
        _RecentlyPlayedTracks.map((x) => jsonEncode(x)).toList());
  }

  void removeFromRecentlyPlayedTracks(dynamic value) {
    _RecentlyPlayedTracks.remove(value);
    prefs.setStringList('ff_RecentlyPlayedTracks',
        _RecentlyPlayedTracks.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromRecentlyPlayedTracks(int index) {
    _RecentlyPlayedTracks.removeAt(index);
    prefs.setStringList('ff_RecentlyPlayedTracks',
        _RecentlyPlayedTracks.map((x) => jsonEncode(x)).toList());
  }

  void updateRecentlyPlayedTracksAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _RecentlyPlayedTracks[index] = updateFn(_RecentlyPlayedTracks[index]);
    prefs.setStringList('ff_RecentlyPlayedTracks',
        _RecentlyPlayedTracks.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInRecentlyPlayedTracks(int index, dynamic value) {
    _RecentlyPlayedTracks.insert(index, value);
    prefs.setStringList('ff_RecentlyPlayedTracks',
        _RecentlyPlayedTracks.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _SuggestedArtists = [];
  List<dynamic> get SuggestedArtists => _SuggestedArtists;
  set SuggestedArtists(List<dynamic> value) {
    _SuggestedArtists = value;
    prefs.setStringList(
        'ff_SuggestedArtists', value.map((x) => jsonEncode(x)).toList());
  }

  void addToSuggestedArtists(dynamic value) {
    _SuggestedArtists.add(value);
    prefs.setStringList('ff_SuggestedArtists',
        _SuggestedArtists.map((x) => jsonEncode(x)).toList());
  }

  void removeFromSuggestedArtists(dynamic value) {
    _SuggestedArtists.remove(value);
    prefs.setStringList('ff_SuggestedArtists',
        _SuggestedArtists.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromSuggestedArtists(int index) {
    _SuggestedArtists.removeAt(index);
    prefs.setStringList('ff_SuggestedArtists',
        _SuggestedArtists.map((x) => jsonEncode(x)).toList());
  }

  void updateSuggestedArtistsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _SuggestedArtists[index] = updateFn(_SuggestedArtists[index]);
    prefs.setStringList('ff_SuggestedArtists',
        _SuggestedArtists.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInSuggestedArtists(int index, dynamic value) {
    _SuggestedArtists.insert(index, value);
    prefs.setStringList('ff_SuggestedArtists',
        _SuggestedArtists.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _SuggestedAlbums = [];
  List<dynamic> get SuggestedAlbums => _SuggestedAlbums;
  set SuggestedAlbums(List<dynamic> value) {
    _SuggestedAlbums = value;
    prefs.setStringList(
        'ff_SuggestedAlbums', value.map((x) => jsonEncode(x)).toList());
  }

  void addToSuggestedAlbums(dynamic value) {
    _SuggestedAlbums.add(value);
    prefs.setStringList('ff_SuggestedAlbums',
        _SuggestedAlbums.map((x) => jsonEncode(x)).toList());
  }

  void removeFromSuggestedAlbums(dynamic value) {
    _SuggestedAlbums.remove(value);
    prefs.setStringList('ff_SuggestedAlbums',
        _SuggestedAlbums.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromSuggestedAlbums(int index) {
    _SuggestedAlbums.removeAt(index);
    prefs.setStringList('ff_SuggestedAlbums',
        _SuggestedAlbums.map((x) => jsonEncode(x)).toList());
  }

  void updateSuggestedAlbumsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _SuggestedAlbums[index] = updateFn(_SuggestedAlbums[index]);
    prefs.setStringList('ff_SuggestedAlbums',
        _SuggestedAlbums.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInSuggestedAlbums(int index, dynamic value) {
    _SuggestedAlbums.insert(index, value);
    prefs.setStringList('ff_SuggestedAlbums',
        _SuggestedAlbums.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _AllArtists = [];
  List<dynamic> get AllArtists => _AllArtists;
  set AllArtists(List<dynamic> value) {
    _AllArtists = value;
    prefs.setStringList(
        'ff_AllArtists', value.map((x) => jsonEncode(x)).toList());
  }

  void addToAllArtists(dynamic value) {
    _AllArtists.add(value);
    prefs.setStringList(
        'ff_AllArtists', _AllArtists.map((x) => jsonEncode(x)).toList());
  }

  void removeFromAllArtists(dynamic value) {
    _AllArtists.remove(value);
    prefs.setStringList(
        'ff_AllArtists', _AllArtists.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromAllArtists(int index) {
    _AllArtists.removeAt(index);
    prefs.setStringList(
        'ff_AllArtists', _AllArtists.map((x) => jsonEncode(x)).toList());
  }

  void updateAllArtistsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _AllArtists[index] = updateFn(_AllArtists[index]);
    prefs.setStringList(
        'ff_AllArtists', _AllArtists.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInAllArtists(int index, dynamic value) {
    _AllArtists.insert(index, value);
    prefs.setStringList(
        'ff_AllArtists', _AllArtists.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _AllAlbums = [];
  List<dynamic> get AllAlbums => _AllAlbums;
  set AllAlbums(List<dynamic> value) {
    _AllAlbums = value;
    prefs.setStringList(
        'ff_AllAlbums', value.map((x) => jsonEncode(x)).toList());
  }

  void addToAllAlbums(dynamic value) {
    _AllAlbums.add(value);
    prefs.setStringList(
        'ff_AllAlbums', _AllAlbums.map((x) => jsonEncode(x)).toList());
  }

  void removeFromAllAlbums(dynamic value) {
    _AllAlbums.remove(value);
    prefs.setStringList(
        'ff_AllAlbums', _AllAlbums.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromAllAlbums(int index) {
    _AllAlbums.removeAt(index);
    prefs.setStringList(
        'ff_AllAlbums', _AllAlbums.map((x) => jsonEncode(x)).toList());
  }

  void updateAllAlbumsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _AllAlbums[index] = updateFn(_AllAlbums[index]);
    prefs.setStringList(
        'ff_AllAlbums', _AllAlbums.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInAllAlbums(int index, dynamic value) {
    _AllAlbums.insert(index, value);
    prefs.setStringList(
        'ff_AllAlbums', _AllAlbums.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _AllTracks = [];
  List<dynamic> get AllTracks => _AllTracks;
  set AllTracks(List<dynamic> value) {
    _AllTracks = value;
    prefs.setStringList(
        'ff_AllTracks', value.map((x) => jsonEncode(x)).toList());
  }

  void addToAllTracks(dynamic value) {
    _AllTracks.add(value);
    prefs.setStringList(
        'ff_AllTracks', _AllTracks.map((x) => jsonEncode(x)).toList());
  }

  void removeFromAllTracks(dynamic value) {
    _AllTracks.remove(value);
    prefs.setStringList(
        'ff_AllTracks', _AllTracks.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromAllTracks(int index) {
    _AllTracks.removeAt(index);
    prefs.setStringList(
        'ff_AllTracks', _AllTracks.map((x) => jsonEncode(x)).toList());
  }

  void updateAllTracksAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _AllTracks[index] = updateFn(_AllTracks[index]);
    prefs.setStringList(
        'ff_AllTracks', _AllTracks.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInAllTracks(int index, dynamic value) {
    _AllTracks.insert(index, value);
    prefs.setStringList(
        'ff_AllTracks', _AllTracks.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _AllGenres = [];
  List<dynamic> get AllGenres => _AllGenres;
  set AllGenres(List<dynamic> value) {
    _AllGenres = value;
    prefs.setStringList(
        'ff_AllGenres', value.map((x) => jsonEncode(x)).toList());
  }

  void addToAllGenres(dynamic value) {
    _AllGenres.add(value);
    prefs.setStringList(
        'ff_AllGenres', _AllGenres.map((x) => jsonEncode(x)).toList());
  }

  void removeFromAllGenres(dynamic value) {
    _AllGenres.remove(value);
    prefs.setStringList(
        'ff_AllGenres', _AllGenres.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromAllGenres(int index) {
    _AllGenres.removeAt(index);
    prefs.setStringList(
        'ff_AllGenres', _AllGenres.map((x) => jsonEncode(x)).toList());
  }

  void updateAllGenresAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _AllGenres[index] = updateFn(_AllGenres[index]);
    prefs.setStringList(
        'ff_AllGenres', _AllGenres.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInAllGenres(int index, dynamic value) {
    _AllGenres.insert(index, value);
    prefs.setStringList(
        'ff_AllGenres', _AllGenres.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _FavoriteSongs = [];
  List<dynamic> get FavoriteSongs => _FavoriteSongs;
  set FavoriteSongs(List<dynamic> value) {
    _FavoriteSongs = value;
    prefs.setStringList(
        'ff_FavoriteSongs', value.map((x) => jsonEncode(x)).toList());
  }

  void addToFavoriteSongs(dynamic value) {
    _FavoriteSongs.add(value);
    prefs.setStringList(
        'ff_FavoriteSongs', _FavoriteSongs.map((x) => jsonEncode(x)).toList());
  }

  void removeFromFavoriteSongs(dynamic value) {
    _FavoriteSongs.remove(value);
    prefs.setStringList(
        'ff_FavoriteSongs', _FavoriteSongs.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromFavoriteSongs(int index) {
    _FavoriteSongs.removeAt(index);
    prefs.setStringList(
        'ff_FavoriteSongs', _FavoriteSongs.map((x) => jsonEncode(x)).toList());
  }

  void updateFavoriteSongsAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _FavoriteSongs[index] = updateFn(_FavoriteSongs[index]);
    prefs.setStringList(
        'ff_FavoriteSongs', _FavoriteSongs.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInFavoriteSongs(int index, dynamic value) {
    _FavoriteSongs.insert(index, value);
    prefs.setStringList(
        'ff_FavoriteSongs', _FavoriteSongs.map((x) => jsonEncode(x)).toList());
  }

  List<dynamic> _Images = [];
  List<dynamic> get Images => _Images;
  set Images(List<dynamic> value) {
    _Images = value;
    prefs.setStringList('ff_Images', value.map((x) => jsonEncode(x)).toList());
  }

  void addToImages(dynamic value) {
    _Images.add(value);
    prefs.setStringList(
        'ff_Images', _Images.map((x) => jsonEncode(x)).toList());
  }

  void removeFromImages(dynamic value) {
    _Images.remove(value);
    prefs.setStringList(
        'ff_Images', _Images.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromImages(int index) {
    _Images.removeAt(index);
    prefs.setStringList(
        'ff_Images', _Images.map((x) => jsonEncode(x)).toList());
  }

  void updateImagesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _Images[index] = updateFn(_Images[index]);
    prefs.setStringList(
        'ff_Images', _Images.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInImages(int index, dynamic value) {
    _Images.insert(index, value);
    prefs.setStringList(
        'ff_Images', _Images.map((x) => jsonEncode(x)).toList());
  }

  String _PlayNowURL = '';
  String get PlayNowURL => _PlayNowURL;
  set PlayNowURL(String value) {
    _PlayNowURL = value;
    prefs.setString('ff_PlayNowURL', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

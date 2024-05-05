import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

dynamic parseTrackInfo(String? trackURL) {
  // Local Variables
  String artistName = "";
  String albumName = "";
  String albumCoverURL = "";
  String songTitle = "";

  // Check if trackURL is not set (null)
  if (trackURL == null || trackURL.isEmpty || trackURL == '0') {
    albumCoverURL = "https://api.mangoboat.tv/images/cd.png";
  } else {
    String api = "https://api.mangoboat.tv/music/";
    String cover = "/cover.jpg";
    List<String> splitPath = trackURL.split('/');
    artistName = splitPath[splitPath.length - 3];
    albumName = splitPath[splitPath.length - 2];
    albumCoverURL = api + artistName + "/" + albumName + cover;
    songTitle = splitPath[splitPath.length - 1];
    songTitle = songTitle.substring(0, songTitle.length - 4);
  }

  Map<String, String> trackInfo = {
    'artistName': artistName,
    'albumName': albumName,
    'albumCoverURL': albumCoverURL,
    'songTitle': songTitle,
  };

  return trackInfo;
}

dynamic pTrackInfo(String? trackURL) {
  // Local Variables
  String artistName = "";
  String artistPosterURL = "";
  String albumName = "";
  String albumCoverURL = "";
  String songTitle = "";

  // Check if trackURL is not set (null)
  if (trackURL == null || trackURL.isEmpty || trackURL == '0') {
    artistPosterURL = "https://api.mangoboat.tv/images/cd.png";
    albumCoverURL = "https://api.mangoboat.tv/images/cd.png";
  } else {
    String api = "https://api.mangoboat.tv/music/";
    String cover = "/cover.jpg";
    String poster = "/poster.jpg";
    List<String> splitPath = trackURL.split('/');
    artistName = splitPath[splitPath.length - 3];
    artistPosterURL = api + artistName + poster;
    albumName = splitPath[splitPath.length - 2];
    albumCoverURL = api + artistName + "/" + albumName + cover;
    songTitle = splitPath[splitPath.length - 1];
    songTitle = songTitle.substring(0, songTitle.length - 4);
  }

  Map<String, String> trackInfo = {
    'artistName': artistName,
    'artistPosterURL': artistPosterURL,
    'albumName': albumName,
    'albumCoverURL': albumCoverURL,
    'songTitle': songTitle,
  };

  return trackInfo;
}

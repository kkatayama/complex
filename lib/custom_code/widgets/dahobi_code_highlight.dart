// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// https://dahobi.flutterflow.app/blogPostDetail?postID=N3dvXte9hiiNsgo0Ezru&hobbyDoc=ecZosNMPtoWGCbWUJKCc&moduleDoc=o4HsWGsqj5lDev2hbg1p

import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/theme_map.dart';
import 'package:flutter_highlight/themes/github.dart';

class DahobiCodeHighlight extends StatefulWidget {
  const DahobiCodeHighlight({
    Key? key,
    this.width,
    this.height,
    this.code,
    this.lang,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? code;
  final String? lang;

  @override
  _DahobiCodeHighlightState createState() => _DahobiCodeHighlightState();
}

class _DahobiCodeHighlightState extends State<DahobiCodeHighlight> {
  @override
  Widget build(BuildContext context) {
    var code = widget.code;
    var language = widget.lang;
    return HighlightView(
      code!,
      language: language,
      theme: githubTheme,
      padding: EdgeInsets.all(12),
      textStyle: TextStyle(
        //fontFamily: 'My awesome monospace font',
        fontSize: 14,
      ),
    );
  }
}

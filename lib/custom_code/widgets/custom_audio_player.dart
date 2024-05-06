// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
import 'package:just_audio/just_audio.dart';

class CustomAudioPlayer extends StatefulWidget {
  const CustomAudioPlayer(
      {Key? key,
      this.width,
      this.height,
      required this.initialUrl,
      required this.audioUrls})
      : super(key: key);

  final double? width;
  final double? height;
  final String initialUrl;
  final List<String> audioUrls;

  @override
  _CustomAudioPlayerState createState() => _CustomAudioPlayerState();
}

class _CustomAudioPlayerState extends State<CustomAudioPlayer> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _initAudioPlayer();
  }

  void _initAudioPlayer() async {
    try {
      await _audioPlayer.setUrl(widget.audioUrls[_currentIndex]);
    } catch (e) {
      print("Error setting audio URL: $e");
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _playPause() {
    if (_audioPlayer.playing) {
      _audioPlayer.pause();
    } else {
      _audioPlayer.play();
    }
  }

  void _seek(double position) {
    _audioPlayer.seek(Duration(milliseconds: position.toInt()));
  }

  void _next() {
    if (_currentIndex < widget.audioUrls.length - 1) {
      _currentIndex++;
      _audioPlayer.setUrl(widget.audioUrls[_currentIndex]);
    }
  }

  void _prev() {
    if (_currentIndex > 0) {
      _currentIndex--;
      _audioPlayer.setUrl(widget.audioUrls[_currentIndex]);
    }
  }

  void _repeat() {
    _audioPlayer.setLoopMode(LoopMode.one);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Now Playing: ${widget.audioUrls[_currentIndex]}'),
            StreamBuilder<Duration?>(
              stream: _audioPlayer.positionStream,
              builder: (context, snapshot) {
                final position = snapshot.data ?? Duration.zero;
                return Slider(
                  value: position.inMilliseconds.toDouble(),
                  min: 0,
                  max: _audioPlayer.duration?.inMilliseconds.toDouble() ?? 0,
                  onChanged: _seek,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous),
                  onPressed: _prev,
                ),
                IconButton(
                  icon: Icon(
                      _audioPlayer.playing ? Icons.pause : Icons.play_arrow),
                  onPressed: _playPause,
                ),
                IconButton(
                  icon: Icon(Icons.skip_next),
                  onPressed: _next,
                ),
                IconButton(
                  icon: Icon(Icons.repeat),
                  onPressed: _repeat,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import "package:flutter/material.dart";
import 'package:fronttraining/screen/commons/appBarMusic.dart';
import 'package:fronttraining/screen/musicPage/widgets/buttonBarMusic.dart';
import 'package:fronttraining/screen/musicPage/widgets/coverAlbum.dart';
import 'package:fronttraining/screen/musicPage/widgets/sliderMusic.dart';
import 'package:fronttraining/screen/musicPage/widgets/songInformation.dart';
import 'package:fronttraining/service/constantData.dart';

import '../../model/song.dart';

class MyMusicPage extends StatefulWidget {
  const MyMusicPage({super.key});

  @override
  State<MyMusicPage> createState() => _MyMusicPageState();
}

class _MyMusicPageState extends State<MyMusicPage> {
  double _currentTime = 0.0;
  int _index = 0;
  bool _isPlay = false;

  AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    Song currentSong = album_test.songs[_index];

    return Scaffold(
        appBar: MyAppBarMusic(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black87,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SongInformation(
                  title: album_test.name,
                  titleSize: 15,
                  artist: "${_index + 1} of ${album_test.songs.length}",
                  artistSize: 12,
                  height: 40,
                ),
                CoverAlbum(path: album_test.cover_url),
                SongInformation(
                    title: currentSong.name, artist: currentSong.artist),
                SliderMusic(
                  currentTime: _currentTime,
                  callback: changeTimeValue,
                  maxTime: currentSong.time,
                ),
                ButtonBarMusic(
                  callback: changeMusic,
                  callbackAudio: play,
                  isPlay: _isPlay,
                ),
              ],
            ),
          ),
        ));
  }

  void changeMusic(bool isNext) {
    setState(() {
      if (isNext) {
        if (_index + 1 == album_test.songs.length) {
          _index = 0;
        } else {
          _index++;
        }
      } else if (_index - 1 < 0) {
        _index = album_test.songs.length - 1;
      } else {
        _index--;
      }
      _currentTime = 0.0;
    });
  }

  void changeTimeValue(value) {
    setState(() {
      _currentTime = value;
    });
  }

  Future<void> play() async {
    if (_isPlay) {
      await _audioPlayer.pause();
    } else {
      String path = album_test.songs[_index].songUrl;
      await _audioPlayer.play(AssetSource(path));
    }
    setState(() {
      _isPlay = !_isPlay;
    });
  }
}

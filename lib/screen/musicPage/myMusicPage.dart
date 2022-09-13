import "package:flutter/material.dart";
import 'package:fronttraining/screen/musicPage/widgets/appBarMusic.dart';
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
        _index = album_test.songs.length-1;
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
}

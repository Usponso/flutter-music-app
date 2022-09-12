import "package:flutter/material.dart";
import 'package:fronttraining/screen/musicPage/widgets/appBarMusic.dart';

class MyMusicPage extends StatefulWidget {
  const MyMusicPage({super.key});

  @override
  State<MyMusicPage> createState() => _MyMusicPageState();
}

class _MyMusicPageState extends State<MyMusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MyAppBarMusic(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("TITRE 1", style: TextStyle(color: Colors.white)),
                Text("IMAGE", style: TextStyle(color: Colors.white)),
                Text("TITRE + ARTISTE", style: TextStyle(color: Colors.white)),
                Text("SLIDER", style: TextStyle(color: Colors.white)),
                Text("LISTE BOUTON", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ));
  }
}

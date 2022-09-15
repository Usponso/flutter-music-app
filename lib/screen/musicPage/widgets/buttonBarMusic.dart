import "package:flutter/material.dart";

class ButtonBarMusic extends StatelessWidget {
  const ButtonBarMusic(
      {super.key,
      required this.callback,
      required this.callbackAudio,
      required this.isPlay});

  final Function callback;
  final Function callbackAudio;
  final bool isPlay;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            print("REPEAT");
          },
          icon: Icon(Icons.repeat, color: Colors.white),
        ),
        Container(
          width: 200,
          height: 50,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              onPressed: () {
                print("RETOUR EN ARRIERE");
                callback(false);
              },
              icon: Icon(Icons.arrow_back, color: Colors.white),
            ),
            IconButton(
                onPressed: () => callbackAudio(),
                icon: Icon(isPlay ? Icons.pause : Icons.play_arrow,
                    color: Colors.white)),
            IconButton(
              onPressed: () {
                print("AVANCER");
                callback(true);
              },
              icon: Icon(Icons.arrow_forward, color: Colors.white),
            ),
          ]),
        ),
        IconButton(
          onPressed: () {
            print("TELECHARGER");
          },
          icon: Icon(Icons.download, color: Colors.white),
        ),
      ],
    );
  }
}

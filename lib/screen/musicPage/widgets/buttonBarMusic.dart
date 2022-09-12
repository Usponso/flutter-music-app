import "package:flutter/material.dart";

class ButtonBarMusic extends StatelessWidget {
  const ButtonBarMusic({super.key});

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
              },
              icon: Icon(Icons.arrow_back, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                print("PAUSE");
              },
              icon: Icon(Icons.pause, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                print("AVANCER");
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

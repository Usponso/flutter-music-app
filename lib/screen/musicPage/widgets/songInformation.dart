import "package:flutter/material.dart";

class SongInformation extends StatelessWidget {
  const SongInformation({super.key, required this.title, required this.artist, this.height = 60, this.titleSize = 28, this.artistSize = 14});

  final String title;
  final String artist;
  final double height;
  final double titleSize;
  final double artistSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold)),
          Text(artist,
              style: TextStyle(color: Colors.white, fontSize: artistSize)),
        ],
      ),
    );
  }
}

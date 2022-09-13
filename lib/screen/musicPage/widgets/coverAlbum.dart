import "package:flutter/material.dart";

class CoverAlbum extends StatelessWidget {
  const CoverAlbum({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(path)),
      ),
    );
  }
}

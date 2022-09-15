import "package:flutter/material.dart";

class CustomBar extends StatelessWidget {
  const CustomBar({super.key, required this.index, required this.callback});
  final int index;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) => callback(value),
      backgroundColor: Colors.black87,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black87),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
          backgroundColor: Colors.black87,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          label: "My Music",
          backgroundColor: Colors.black87,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: "Account",
          backgroundColor: Colors.black87,
        ),
      ],
    );
  }
}

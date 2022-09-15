import "package:flutter/material.dart";
import 'package:fronttraining/screen/commons/appBarMusic.dart';
import 'package:fronttraining/screen/homepage/widgets/bottomAppBar.dart';
import 'package:fronttraining/screen/homepage/widgets/menuListText.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<String> menus = ["All", "New", "Popular", "Chart", "Favorite"];
  int _indexMenu = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarMusic(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Browse",
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              MenuListText(
                  menus: menus, indexMenu: _indexMenu, callback: changeMenu),
              Text(
                "List 1",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "List card 1",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Titre 2",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "List card 2",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBar(
        index: _currentIndex,
        callback: changeIndex,
      ),
    );
  }

  void changeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void changeMenu(int index) {
    setState(() {
      _indexMenu = index;
    });
  }
}

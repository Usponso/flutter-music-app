import "package:flutter/material.dart";

class MenuListText extends StatelessWidget {
  const MenuListText({super.key, required this.menus, required this.indexMenu, required this.callback});

  final List<String> menus;
  final int indexMenu;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemCount: menus.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          FontWeight weight = FontWeight.normal;
          double padding = 40;
          if (index == 0) {
            padding = 0;
          }
          if (index == indexMenu) {
            weight = FontWeight.bold;
          }
          return Padding(
            padding: EdgeInsets.only(top: 10, right: 40, left: padding),
            child: GestureDetector(
              onTap: () => callback(index),
              child: Text(menus[index],
                  style: TextStyle(color: Colors.white, fontWeight: weight)),
            ),
          );
        },
      ),
    );
  }
}

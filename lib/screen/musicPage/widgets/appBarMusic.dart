import "package:flutter/material.dart";

class MyAppBarMusic extends StatelessWidget with PreferredSizeWidget {
  const MyAppBarMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          print("EXIT");
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
      actions: [
        IconButton(
          onPressed: () {
            print("SETTINGS");
          },
          icon: Icon(Icons.more_vert),
        )
      ],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

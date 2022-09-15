import "package:flutter/material.dart";

class MyAppBarMusic extends StatelessWidget with PreferredSizeWidget {
  const MyAppBarMusic({super.key, this.indexLeading = 1});

  final int indexLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      elevation: 0,
      leading: leadingAction(),
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

  void searchAction() {
    print("Search");
  }

  void exitAction() {
    print("Exit");
  }

  Widget leadingAction() {
    switch (indexLeading) {
      case 0:
        return IconButton(
          onPressed: () => exitAction(),
          icon: Icon(Icons.arrow_back_ios_new),
        );
      case 1:
        return IconButton(
          onPressed: () => searchAction(),
          icon: Icon(Icons.search),
        );
      default:
        return IconButton(
          onPressed: () => searchAction(),
          icon: Icon(Icons.search),
        );
    }
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

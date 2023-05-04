import 'package:flutter/material.dart';

class LessonsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;

  const LessonsAppBar({Key? key, this.actions = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double iconSize = MediaQuery.of(context).size.width * 0.1;
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: iconSize,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: iconSize,
                ))
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

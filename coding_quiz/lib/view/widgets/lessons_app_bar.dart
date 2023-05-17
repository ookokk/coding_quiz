import 'package:flutter/material.dart';

class LessonsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;

  const LessonsAppBar({Key? key, this.actions = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
      child: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

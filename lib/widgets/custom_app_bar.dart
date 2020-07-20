import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Widget leading;
  final String title;
  final bool isTitleCentered;
  final bool automaticallyImplyLeading;

  CustomAppBar(
      {@required this.leading,
      @required this.title,
      @required this.isTitleCentered,
      @required this.automaticallyImplyLeading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline3,
      ),
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: isTitleCentered,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}

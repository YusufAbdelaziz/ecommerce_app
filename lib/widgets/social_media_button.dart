import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String imgPath;
  final Function onTap;
  const SocialMediaButton({@required this.imgPath, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
        padding: EdgeInsets.all(10),
        child: Image.asset(
          imgPath,
          alignment: Alignment.center,
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}

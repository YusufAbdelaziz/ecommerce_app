import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      icon: Icon(Icons.arrow_back_ios),
      color: Color(0xFF757575),
      iconSize: 16,
      onPressed: () => Navigator.of(context).pop(),
    );
  }
}

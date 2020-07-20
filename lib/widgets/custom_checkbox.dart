import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final bool isClicked;

  const CustomCheckbox({@required this.isClicked});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(color: isClicked ? Color(0xFFFF8B41) : Color(0xFF757575))),
      height: 18,
      width: 18,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: isClicked
            ? Icon(
                Icons.check,
                size: 16,
                color: Color(0xFFFF8B41),
              )
            : Container(),
      ),
    );
  }
}

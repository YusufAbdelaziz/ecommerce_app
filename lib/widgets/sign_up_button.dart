import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final Function onTap;
  final String firstText;
  final String secondText;

  const CustomFlatButton(
      {@required this.onTap, @required this.firstText, @required this.secondText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(text: firstText, style: Theme.of(context).textTheme.headline3),
          TextSpan(
              text: secondText,
              style: Theme.of(context).textTheme.headline3.copyWith(color: Color(0xFFF78143)))
        ]),
      ),
    );
  }
}

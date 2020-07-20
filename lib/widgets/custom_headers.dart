import 'package:flutter/material.dart';

class CustomHeaders extends StatelessWidget {
  final String title;
  final String subTitle;

  const CustomHeaders({@required this.title, this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(height: 20),
        Text(title,
            style: Theme.of(context).textTheme.headline1.copyWith(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500)),
        SizedBox(height: 10),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.headline3.copyWith(fontSize: 14),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

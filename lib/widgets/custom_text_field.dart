import 'dart:io';

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final String labelText;
  final IconData suffixIcon;
  final bool obscureText;
  final TextInputType textInputType;
  const CustomTextField(
      {@required this.hintText,
      @required this.textEditingController,
      @required this.textInputType,
      @required this.obscureText,
      @required this.labelText,
      @required this.suffixIcon});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          width: width,
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(30)),
          child: TextField(
            keyboardType: textInputType,
            textInputAction: TextInputAction.done,
            style: Theme.of(context)
                .textTheme
                .headline3
                .copyWith(fontSize: 17, color: Colors.grey.withOpacity(0.8)),
            cursorColor: Colors.grey.withOpacity(0.5),
            obscureText: obscureText,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: Theme.of(context).textTheme.headline3.copyWith(
                    fontSize: 17, color: Colors.grey.withOpacity(0.8), fontWeight: FontWeight.w400),
                suffixIcon: Icon(
                  suffixIcon,
                  color: Colors.grey,
                )),
          ),
        ),
        Positioned(
          child: Container(
            color: Colors.white,
            child: Text(labelText,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(fontSize: 15, fontWeight: FontWeight.w400)),
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
          left: 40,
          top: 12,
        )
      ],
    );
  }
}

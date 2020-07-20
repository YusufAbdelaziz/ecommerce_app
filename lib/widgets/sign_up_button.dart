import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  final Function onTap;

  const SignUpButton({@required this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      onTap: onTap,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(text: 'Don\'t have an account? ', style: Theme.of(context).textTheme.headline3),
          TextSpan(
              text: 'Sign Up',
              style: Theme.of(context).textTheme.headline3.copyWith(color: Color(0xFFF78143)))
        ]),
      ),
    );
  }
}

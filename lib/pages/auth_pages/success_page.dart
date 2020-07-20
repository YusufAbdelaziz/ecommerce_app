import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_headers.dart';
class SuccessPage extends StatelessWidget {
  final String title;

  const SuccessPage({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          automaticallyImplyLeading: false,
          title: title,
          isTitleCentered: true,
          leading: null
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/glitter.png'))),
            child: FlareActor(
              'assets/success.flr',
              animation: 'success',
            ),
          ),
          SizedBox(height: 15),
          CustomHeaders(
            title: 'Login Success',
            subTitle: 'Now you\'re ready to start shopping !',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: CustomButton(
              text: 'Go To Home Page',
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}

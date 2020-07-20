import 'package:ecommerce_app/pages/auth_pages/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_headers.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:ecommerce_app/widgets/sign_up_button.dart';
import 'package:page_transition/page_transition.dart';

class ConfirmPasswordPage extends StatefulWidget {
  @override
  _ConfirmPasswordPageState createState() => _ConfirmPasswordPageState();
}

class _ConfirmPasswordPageState extends State<ConfirmPasswordPage> {
  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: false,
        title: 'Forget Password',
        isTitleCentered: true,
        leading: IconButton(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF757575),
          iconSize: 16,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height - 100,
              child: Column(
                children: <Widget>[
                  CustomHeaders(
                    title: 'Confirm Password',
                    subTitle: 'Please enter your new password',
                  ),
                  Spacer(),
                  CustomTextField(
                    obscureText: true,
                    suffixIcon: Icons.lock,
                    labelText: 'Password',
                    textInputType: TextInputType.text,
                    hintText: 'Enter your password',
                    textEditingController: _textEditingController,
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  CustomButton(text: 'Continue',
                    onTap: () => print('hey'),
                  ),
                  SignUpButton(
                    onTap: () => Navigator.of(context)
                        .push(PageTransition(type: PageTransitionType.fade, child: SignUpPage())),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

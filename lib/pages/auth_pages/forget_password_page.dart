import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:ecommerce_app/pages/auth_pages/confirm_password_page.dart';
import 'package:ecommerce_app/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_headers.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:ecommerce_app/widgets/sign_up_button.dart';
import 'package:ecommerce_app/pages/auth_pages/sign_up_page.dart';
import 'package:ecommerce_app/widgets/custom_back_button.dart';

class ForgetPasswordPage extends StatefulWidget {
  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
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
        leading: CustomBackButton(),
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
                    title: 'Forgot Password',
                    subTitle:
                        'Please enter your email and we will send you a link to return to your account',
                  ),
                  Spacer(),
                  CustomTextField(
                    obscureText: false,
                    suffixIcon: Icons.email,
                    labelText: 'Email',
                    textInputType: TextInputType.emailAddress,
                    hintText: 'Enter your email',
                    textEditingController: _textEditingController,
                  ),
                  SizedBox(
                    height: 140,
                  ),
                  CustomButton(
                    text: 'Continue',
                    onTap: () => Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.fade, child: ConfirmPasswordPage())),
                  ),
                  CustomFlatButton(
                    firstText: 'Don\'t have an account? ',
                    secondText: 'Sign Up',
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

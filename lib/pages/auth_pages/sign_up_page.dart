import 'package:ecommerce_app/pages/auth_pages/complete_profile_page.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_headers.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:ecommerce_app/widgets/social_media_button.dart';
import 'package:page_transition/page_transition.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  TextEditingController _RePasswordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _RePasswordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        automaticallyImplyLeading: false,
        title: 'Sign Up',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                CustomHeaders(
                  title: 'Register Account',
                  subTitle: 'Complete your details or continue with social media',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'Enter your email',
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                  labelText: 'Email',
                  suffixIcon: Icons.email,
                  textEditingController: _emailController,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: 'Enter your password',
                  obscureText: true,
                  textInputType: TextInputType.text,
                  labelText: 'Password',
                  suffixIcon: Icons.lock,
                  textEditingController: _passwordController,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: 'Re-enter your password',
                  obscureText: true,
                  textInputType: TextInputType.text,
                  labelText: 'Confirm Password',
                  suffixIcon: Icons.lock,
                  textEditingController: _passwordController,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  text: 'Continue',
                  onTap: () => Navigator.of(context).push(
                      PageTransition(type: PageTransitionType.fade, child: CompleteProfilePage())),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SocialMediaButton(
                      imgPath: 'assets/images/google.png',
                      onTap: () => print('Sign in with Google'),
                    ),
                    SocialMediaButton(
                      imgPath: 'assets/images/facebook.png',
                      onTap: () => print('Sign in with Facebook'),
                    ),
                    SocialMediaButton(
                      imgPath: 'assets/images/twitter.png',
                      onTap: () => print('Sign in with Twitter'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    'By registering, you accept our Terms and Condition',
                    style: Theme.of(context).textTheme.headline3.copyWith(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:ecommerce_app/pages/auth_pages/forget_password_page.dart';
import 'package:ecommerce_app/pages/auth_pages/success_page.dart';
import 'package:ecommerce_app/pages/auth_pages/sign_up_page.dart';
import 'package:ecommerce_app/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_checkbox.dart';
import 'package:ecommerce_app/widgets/custom_headers.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';
import 'package:ecommerce_app/widgets/sign_up_button.dart';
import 'package:ecommerce_app/widgets/social_media_button.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  TextEditingController _emailController;
  TextEditingController _passwordController;
  bool isClicked = false;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          automaticallyImplyLeading: false, title: 'Sign In', isTitleCentered: true, leading: null),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                CustomHeaders(
                  title: 'Welcome Back',
                  subTitle: 'Sign in with your email and password or continue with social media',
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
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          /// You can use whatever state management you want for your app but setState
                          /// is used for simplicity.
                          setState(() {
                            isClicked = !isClicked;
                          });
                        },
                        child: CustomCheckbox(
                          isClicked: isClicked,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Remember me',
                        style: Theme.of(context).textTheme.headline3.copyWith(fontSize: 14),
                      ),
                      Spacer(),
                      FlatButton(
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () => Navigator.of(context).push(PageTransition(
                            type: PageTransitionType.fade, child: ForgetPasswordPage())),
                        child: Text(
                          'Forget Password',
                          style: Theme.of(context)
                              .textTheme
                              .headline3
                              .copyWith(decoration: TextDecoration.underline, fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ),
                CustomButton(
                  text: 'Continue',
                  onTap: () => Navigator.of(context).pushReplacement(PageTransition(
                      child: SuccessPage(
                        appBarTitle: 'Login',
                        pageTitle: 'Login Succeeded',
                      ),
                      type: PageTransitionType.fade)),
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
                  height: 20,
                ),
                CustomFlatButton(firstText: 'Don\'t have an account? ', secondText: 'Sign Up',
                  onTap: () =>
                      Navigator.of(context)
                          .push(PageTransition(type: PageTransitionType.fade, child: SignUpPage())),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            )),
      ),
    );
  }
}

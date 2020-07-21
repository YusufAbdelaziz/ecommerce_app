import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:ecommerce_app/pages/auth_pages/success_page.dart';
import 'package:ecommerce_app/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_headers.dart';
import 'package:ecommerce_app/widgets/sign_up_button.dart';

class OTPVerificationPage extends StatefulWidget {
  @override
  _OTPVerificationPageState createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  String currentText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        isTitleCentered: true,
        title: 'OTP Verification',
        automaticallyImplyLeading: true,
        leading: IconButton(
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF757575),
          iconSize: 16,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: <Widget>[
            CustomHeaders(
              title: 'OTP Verification',
              subTitle: 'We sent your code to +1 898 860 ***',
            ),
            SizedBox(height: 70),
            Expanded(
              child: PinCodeTextField(
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    inactiveColor: Color(0xFF757575),
                    activeColor: Color(0xFFFF7C43),
                    selectedColor: Color(0xFFFF7C43),
                    borderWidth: 1,
                    fieldWidth: 50),
                onChanged: (text) {
                  setState(() {
                    currentText = text;
                  });
                },
              ),
            ),
            CustomButton(
              text: 'Continue',
              onTap: () => Navigator.of(context).pushReplacement(PageTransition(
                  type: PageTransitionType.fade,
                  child: SuccessPage(
                    pageTitle: 'Register Succeeded',
                    appBarTitle: 'Sign Up',
                  ))),
            ),
            SizedBox(
              height: 30,
            ),
            CustomFlatButton(
              firstText: 'Didn\'t receive verification code? ',
              secondText: 'Resend code',
              onTap: () => print('resend pin code'),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

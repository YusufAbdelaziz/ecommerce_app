import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:ecommerce_app/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_headers.dart';
import 'package:ecommerce_app/widgets/custom_text_field.dart';

class CompleteProfilePage extends StatefulWidget {
  @override
  _CompleteProfilePageState createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends State<CompleteProfilePage> {
  TextEditingController _firstNameController;
  TextEditingController _lastNameController;
  TextEditingController _addressController;
  TextEditingController _phoneNumberController;

  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _addressController = TextEditingController();
    _phoneNumberController = TextEditingController();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _addressController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
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
                  title: 'Complete Profile',
                  subTitle: 'Complete your profile details',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  hintText: 'Enter your first name',
                  obscureText: true,
                  textInputType: TextInputType.text,
                  labelText: 'First name',
                  suffixIcon: Icons.person,
                  textEditingController: _firstNameController,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: 'Enter your last name',
                  obscureText: true,
                  textInputType: TextInputType.text,
                  labelText: 'Last name',
                  suffixIcon: Icons.person,
                  textEditingController: _lastNameController,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: 'Enter your phone number',
                  obscureText: false,
                  textInputType: TextInputType.phone,
                  labelText: 'Phone Number',
                  suffixIcon: Icons.phone_android,
                  textEditingController: _phoneNumberController,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: 'Enter your phone number',
                  obscureText: false,
                  textInputType: TextInputType.emailAddress,
                  labelText: 'Phone Number',
                  suffixIcon: Icons.location_on,
                  textEditingController: _addressController,
                ),
                CustomButton(
                  text: 'Continue',
                  onTap: () => Navigator.of(context).push(
                      PageTransition(type: PageTransitionType.fade, child: CompleteProfilePage())),
                ),
                SizedBox(
                  height: 5,
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

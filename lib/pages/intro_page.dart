import 'file:///C:/Users/yusse/Desktop/ecommerce_app/lib/pages/auth_pages/sign_in_page.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: IntroductionScreen(
                globalBackgroundColor: Colors.white,
                done: Text('Done', style: TextStyle(color: Colors.transparent)),
                onDone: () {},
                pages: getListPagesViewModel(context),
                showNextButton: false,
                showSkipButton: false,
                curve: Curves.bounceOut,
                dotsDecorator: DotsDecorator(
                    size: const Size.square(6),
                    activeSize: const Size(20.0, 6.0),
                    activeColor: Color(0xFFFF7C43),
                    color: Colors.black26,
                    spacing: const EdgeInsets.symmetric(horizontal: 3.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ))),
          ),
          CustomButton(
            text: 'Continue',
            onTap: () => Navigator.of(context).pushReplacement(
                PageTransition(type: PageTransitionType.fade, child: SignInForm())),
          )
        ],
      ),
    );
  }

  List<PageViewModel> getListPagesViewModel(BuildContext context) {
    return [
      getPageViewModel(
          imagePath: 'assets/images/group3.png',
          title: 'TOKOTO',
          subtitle: RichText(
            text: TextSpan(children: [
              TextSpan(text: 'Welcome to '),
              TextSpan(text: 'tokoto'.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ', Let\'s shop!')
            ], style: TextStyle(color: Colors.grey, fontSize: 16)),
          ),
          context: context),
      getPageViewModel(
          title: 'tokoto'.toUpperCase(),
          context: context,
          imagePath: 'assets/images/group1.png',
          subtitle: Text(
            'We help people to be connected with different stores',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3,
          )),
      getPageViewModel(
          title: 'tokoto'.toUpperCase(),
          context: context,
          imagePath: 'assets/images/group2.png',
          subtitle: Text(
            'We can get you anything you need from your home!',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3,
          )),
    ];
  }

  PageViewModel getPageViewModel(
      {@required String imagePath,
      @required String title,
      @required Widget subtitle,
      @required BuildContext context}) {
    return PageViewModel(
      title: '',
      bodyWidget: Center(
          child: Column(
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 10,
          ),
          subtitle,
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image.asset(
              imagePath,
              height: 250,
            ),
          ),
        ],
      )),
    );
  }
}

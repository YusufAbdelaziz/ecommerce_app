import 'package:ecommerce_app/pages/intro_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonColor: Color(0xFFFF7C43),
        textTheme: TextTheme(
            headline1:
                TextStyle(fontSize: 36, color: Color(0xFFFF7C43), fontWeight: FontWeight.bold),
            headline3: TextStyle(fontSize: 16, color: Color(0xFF757575)),
            headline2: TextStyle(color: Colors.white, fontSize: 18)),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroPage(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:carbon_mail/feature/welcome/Welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: "Montserrat",
            backgroundColor: Colors.white,
            primaryColor: const Color.fromARGB(255, 236, 228, 236)),
        debugShowCheckedModeBanner: false,
        home: WelcomePage());
  }
}
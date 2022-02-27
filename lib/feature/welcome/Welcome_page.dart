// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import '../homepage/homePage.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/home_logo.png"),
                fit: BoxFit.cover)),
        child: Column(children: [
          const Spacer(
            flex: 3,
          ),
          // Title
          const Expanded(
            flex: 2,
            child: Text("Cleaning your inbox has never been easier.",
                style: TextStyle(
                    color: Color(0xff293855),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: 32.0),
                textAlign: TextAlign.center),
          ),
          Expanded(
            flex: 3,
            child: RichText(
                text: const TextSpan(children: [
              TextSpan(
                  style: TextStyle(
                      color: Color(0xff293855),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0),
                  text: "Clean up old subscriptions and \n"),
              TextSpan(
                  style: TextStyle(
                      color: Color(0xff293855),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0),
                  text: "say no to email carbon!"),
              TextSpan(
                  style: TextStyle(
                      color: Color(0xff293855),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0),
                  text: "!")
            ])),
          ),
          const Spacer(
            flex: 8,
          ),
          Expanded(
            flex: 1,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                onPressed: () {
                   Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomePage()));
            
                },
                label: const Text("Get started",
                    style: TextStyle(
                        color: Color(0xff293855),
                        fontWeight: FontWeight.w600,
                        fontFamily: "Montserrat",
                        fontStyle: FontStyle.normal,
                        fontSize: 16.0),
                    textAlign: TextAlign.left),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  fixedSize: const Size(240, 80),
                  alignment: AlignmentDirectional.center,
                ),
                icon: const Icon(Icons.arrow_back),
              ),
            ),
          ),

          const Spacer(
            flex: 1,
          )
        ]),
      ),
    );
  }
}

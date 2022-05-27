import 'package:flutter/material.dart';

import 'home_page.dart';

class WelcomePage extends StatefulWidget{

  const WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  void initState() {

    Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
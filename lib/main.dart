import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vsplash/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'GoogleSans',
      ),
      home: HomePage(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 200.0,
          ),
          Image.asset(
            'assets/images/logo.png',
            scale: 4,
          ),
          SizedBox(
            height: 70.0,
          ),
          Text(
            'Vsplash',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Colors.white.withOpacity(0.25),
                  fontWeight: FontWeight.w600,
                ),
          )
        ],
      ),
    );
  }
}

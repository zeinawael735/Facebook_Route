import 'package:flutter/material.dart';
import 'package:flutter_facebook_session2/screens/facebook_feeds_screen.dart';
import 'package:flutter_facebook_session2/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName:(context)=>LoginScreen(),
        FacebookFeedsScreen.routeName:(context)=>FacebookFeedsScreen()
      },
      //home: LoginScreen(),
    );}
  }
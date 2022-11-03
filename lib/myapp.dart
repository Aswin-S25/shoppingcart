import 'package:flutter/material.dart';
import 'package:shoppingcart/pages/Regester.dart';
import 'package:shoppingcart/pages/Screens/Sign_in/signin.dart';
import 'package:shoppingcart/pages/welcome.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TOLOTO",
      home: Scaffold(
        body: SignInScreen(),
      ),
    );
  }
}

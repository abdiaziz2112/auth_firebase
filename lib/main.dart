import 'package:flutter/material.dart';
import 'package:flutter_login/screens/dashboard.dart';
import 'package:flutter_login/screens/sigin.dart';
import 'package:flutter_login/screens/sign_up.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SignUpPage(),
      //home: SigInPage(),
    );
  }
}

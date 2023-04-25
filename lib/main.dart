import 'package:flutter/material.dart';
import './ui/login_page.dart';
import './ui/signup_page.dart';
import './ui/splash_screen.dart';

void main() {
  runApp(MaterialApp(home: LoginPage()));
  runApp(MaterialApp(home: SignUpPage()));
  runApp(MaterialApp(home: SplashScreen()));
}

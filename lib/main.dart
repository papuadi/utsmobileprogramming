import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uts/pages/LoginPage.dart';
import 'package:uts/pages/MainPage.dart';
import 'package:uts/pages/ProfilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}

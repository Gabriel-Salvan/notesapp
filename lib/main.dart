import 'package:flutter/material.dart';

import 'app/UI/homeScreen.dart';

const Color darkBlue = Colors.grey;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,),
      debugShowCheckedModeBanner: false,
      home:  const Scaffold(
        body: Center(
          child: HomeScreen(),
        ),
      ),
    );
  }
}


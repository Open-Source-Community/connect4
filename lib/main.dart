import 'package:flutter/material.dart';

import 'Connect4Screen.dart';
import 'ScreenParts/Startedcoin.dart';
import 'ScreenParts/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Welcome(),
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color(0xff1D5B79),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(200, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Color(0xffEF6262),
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            elevation: 10,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

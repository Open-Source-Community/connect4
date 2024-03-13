// ignore_for_file: prefer_const_constructors

// ignore: unnecessary_import
import 'package:connect4/ScreenParts/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ScreenParts/Bar.dart';
import 'ScreenParts/Board.dart';
import 'ScreenParts/Cell.dart';
import 'ScreenParts/Startedcoin.dart';

class Connect4Screen extends StatelessWidget {
  const Connect4Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // checkk = start_coin;
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Welcome();
                },
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Connect 4",
        ),
        titleSpacing: MediaQuery.of(context).size.width / 4,
      ),
      body: Board(),
    );
  }
}

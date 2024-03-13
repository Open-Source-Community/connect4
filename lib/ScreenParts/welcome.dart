import 'package:connect4/ScreenParts/Startedcoin.dart';
import 'package:flutter/material.dart';

import '../Connect4Screen.dart';
import 'Bar.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Connect 4 ",
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                coin = [
                  ['w', 'w', 'w', 'w', 'w', 'w', 'w'],
                  ['w', 'w', 'w', 'w', 'w', 'w', 'w'],
                  ['w', 'w', 'w', 'w', 'w', 'w', 'w'],
                  ['w', 'w', 'w', 'w', 'w', 'w', 'w'],
                  ['w', 'w', 'w', 'w', 'w', 'w', 'w'],
                  ['w', 'w', 'w', 'w', 'w', 'w', 'w']
                ];
                checkk = start_coin;
                print("started_con ${start_coin}");

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Connect4Screen();
                    },
                  ),
                );
              },
              child: Text(
                "Let’s Go",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Started_coin();
                    },
                  ),
                );
              },
              child: Text(
                "Choose Your Coin",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: (){
      //     print(checkk);
      //   },
      // ),
    );
  }
}

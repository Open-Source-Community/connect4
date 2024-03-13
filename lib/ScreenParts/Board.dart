// ignore_for_file: prefer_const_constructors

// ignore: unnecessary_import

import 'package:connect4/ScreenParts/Cell.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Bar.dart';
import 'Startedcoin.dart';
import 'cubit/cubit.dart';
import 'cubit/state.dart';

String player = start_coin ? "Orange" : 'Black';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameCubit()..setPlayer(start_coin),
      child: BlocConsumer<GameCubit, State_>(
        listener: (context, state) {},
        builder: (context, state) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '${GameCubit.get(context).player}',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor:
                            GameCubit.get(context).player == "Orange"
                                ? Colors.white
                                : Colors.transparent,
                        radius: 30,
                        child: Cell(col: 'o'),
                      ),
                      CircleAvatar(
                        backgroundColor: GameCubit.get(context).player == "Red"
                            ? Colors.white
                            : Colors.transparent,
                        radius: 30,
                        child: Cell(col: 'b'),
                      ),
                    ],
                  ),

                  // SizedBox(
                  //   height: 10,
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Barr(index: 0)),
                        Expanded(child: Barr(index: 1)),
                        Expanded(child: Barr(index: 2)),
                        Expanded(child: Barr(index: 3)),
                        Expanded(child: Barr(index: 4)),
                        Expanded(child: Barr(index: 5)),
                        Expanded(child: Barr(index: 6)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

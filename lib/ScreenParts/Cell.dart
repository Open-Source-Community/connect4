// ignore_for_file: prefer_const_constructors

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cell extends StatelessWidget {
  final String? col; //color
  const Cell({Key? key, required this.col}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color c;
    if (col == 'w') {
      //white
      c = Colors.white;
    } else if (col == 'o') {
      //orange
      c = Color(0xffF3AA60);
    } else {
      c = Color(0xffEF6262); //black
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.13,
          height: MediaQuery.of(context).size.height * 0.065,
          decoration: BoxDecoration(
            color: Color(0xff1D5B79),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.11,
          height: MediaQuery.of(context).size.height * 0.052,
          decoration: BoxDecoration(
            color: c,
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.all(
            //   Radius.circular(40),
            // ),
          ),
        ),
      ],
    );
  }
}

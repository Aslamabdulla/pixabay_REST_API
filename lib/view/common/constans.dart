import 'package:flutter/material.dart';

///////// constant  heights ////////////

const kHeight10 = SizedBox(
  height: 10,
);
const kWidth5 = SizedBox(
  width: 5,
);
///////constant background colors //////
///

const backgroundGradient = BoxDecoration(
  shape: BoxShape.rectangle,
  gradient: LinearGradient(colors: [
    Color.fromRGBO(43, 154, 184, 1),
    Color.fromRGBO(60, 174, 200, .2)
  ], stops: [
    0,
    .7
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
);

const kAppBarColor = Color.fromRGBO(43, 154, 184, 1);
const kWhite = Colors.white;

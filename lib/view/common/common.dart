import 'package:flutter/material.dart';

//////////// decorations ///////
final gridTileDecoration = BoxDecoration(
    color: Colors.redAccent, borderRadius: BorderRadius.circular(20));
final borderRadiusSearchField = BorderRadius.circular(30);
glassDecoration(Color color1, Color color2) => BoxDecoration(
    image: const DecorationImage(
        image: AssetImage("assets/images/noise.png"),
        fit: BoxFit.cover,
        opacity: .07),
    border: Border.all(width: 1, color: Colors.white30),
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        colors: [color1, color2]));

final glassDecorationPageView = BoxDecoration(
    image: const DecorationImage(
        image: AssetImage("assets/images/noise.png"),
        fit: BoxFit.cover,
        opacity: .07),
    border: Border.all(width: 1, color: Colors.white30),
    borderRadius: BorderRadius.circular(20),
    gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        colors: [Colors.white60, Colors.white12]));

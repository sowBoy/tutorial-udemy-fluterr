import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TitleText extends Text {
  String string;
  TitleText({required this.string})
      : super(
          string,
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w900,
              fontSize: 20,
              fontStyle: FontStyle.italic),
        );
}

import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/models/button_object.dart';
import 'package:la_cuisine_dathena/pages/next_page.dart';
import 'package:la_cuisine_dathena/widgets/branding.dart';
import 'package:la_cuisine_dathena/widgets/hover_button.dart';

// ignore: must_be_immutable
class WebBar extends PreferredSize {
  Size size;

  WebBar({required this.size}): super(
    preferredSize: Size((size.width), (size.height / 3)),
    child: Container(
      padding: EdgeInsets.all(10),
      color: pinkColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Branding(),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: menuButtonHover(),
          )),
          HoverButton(button: ButtonObject(text: "Log in", destination: NextPage()))
        ],
      ),
    )
  );
}
import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/widgets/branding.dart';

class PhoneBar extends AppBar {
  PhoneBar(): super(
    title: Branding(),
    centerTitle: true,
    backgroundColor: pinkColor
  );
}
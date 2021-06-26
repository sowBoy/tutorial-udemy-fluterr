import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/models/make_it_responsive.dart';

class ContainerButton extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    return Center(
      child: (screenSize == ScreenSize.small) ? small() : small(),
    );
  }

  Widget small() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: getFloating(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/widgets/title_text.dart';

class Branding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TitleText(string: "La cuisine d'Athena"),
        Image.asset(
          cupcakeLogo,
          height: 40,
          width: 40,
        )
      ],
    );
  }
}

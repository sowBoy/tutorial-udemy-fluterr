import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/widgets/title_text.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: pinkColor,
      width: size.width,
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          TitleText(string: "Contact:"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                    Text("Social")
                ],
              ),
              Column(
                children: [
                    Text("Contactez nous"),
                    TextButton(onPressed: null, child: Text("Tel: 06 43 89 62 55")),
                    TextButton(onPressed: null, child: Text("mail: boubacar.sowboy@gmail.com"))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
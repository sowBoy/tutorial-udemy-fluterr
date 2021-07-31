import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/models/make_it_responsive.dart';
import 'package:la_cuisine_dathena/section/contact_section.dart';
import 'package:la_cuisine_dathena/widgets/drawer_small.dart';
import 'package:la_cuisine_dathena/widgets/phone_bar.dart';
import 'package:la_cuisine_dathena/section/top_stack.dart';
import 'package:la_cuisine_dathena/widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => HomeState();
}

class HomeState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    return Scaffold(
      appBar: (screenSize == ScreenSize.small) ? PhoneBar() : WebBar(size: size),
      drawer: DrawerSmall(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopStack(),
            ContactSection()
          ],
        ),
      )
    );
  }
}
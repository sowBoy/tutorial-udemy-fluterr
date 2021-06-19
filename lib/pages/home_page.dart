import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/widgets/web_bar.dart';

class HomePage extends StatefulWidget {
  @override
  createState() => HomeState();
}

class HomeState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: WebBar(size: size),
      body: Center(child: Text("Notre premiere web app"),),
    );
  }
}
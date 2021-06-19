import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/widgets/web_bar.dart';

class NextPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: WebBar(size: size,),
      body: Center(child: Text("Nous sommes passés à la page suivante"),),
    );
  }
}
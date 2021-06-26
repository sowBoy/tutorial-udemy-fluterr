import 'package:flutter/material.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/models/button_object.dart';
import 'package:la_cuisine_dathena/widgets/branding.dart';

class DrawerSmall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(child: ListView.separated(
        itemBuilder: (context, index) {
          if(index == 0){
            return Center(child: Branding());
          } else {
            ButtonObject button = menuButton[index - 1];
            return ListTile(
              title: Text(button.text ?? ""),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => button.destination));
                },
            );
          }
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: menuButton.length +1
    ),);
  }
}
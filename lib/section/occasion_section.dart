import 'package:flutter/cupertino.dart';
import 'package:la_cuisine_dathena/constants.dart';
import 'package:la_cuisine_dathena/models/make_it_responsive.dart';
import 'package:la_cuisine_dathena/models/occasion.dart';
import 'package:la_cuisine_dathena/widgets/occasion_widget.dart';
import 'package:la_cuisine_dathena/widgets/title_text.dart';

// ignore: must_be_immutable
class OccasionSection extends StatelessWidget {
  List<Occasion> occasions  = [
      Occasion(name: "Mariage", path: weddingImage),
      Occasion(name: "Anniversaire", path: birthdayImage),
      Occasion(name: "Autre", path: cupcakeImage),
  ];
  
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    bool isSmall = (screenSize == ScreenSize.small);

    Size cardSize = isSmall ? size / 2 : size / 4;

    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              TitleText(string: "Occasions:"),
              Expanded(child: Container())
              ],
          ),
           Row(
            children: [
              Expanded(child: Container()),
              Text("Il y a toujours une très bonne occasion pour deguster un gateau"),
              ],
          ),
          adaptedToSize(isSmall, cardSize)
        ],
      ),
    );
  }
   
  Widget adaptedToSize(bool small, Size size) {
    List<Widget> widgets = occasions.map((e) {
      return OccasionWidget(size: size, occasion: e);
    }).toList();
    return (small) ? Column(children: widgets,) : Row(children: widgets,);
  }
}

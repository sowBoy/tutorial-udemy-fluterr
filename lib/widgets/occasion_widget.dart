import 'package:flutter/cupertino.dart';
import 'package:la_cuisine_dathena/models/occasion.dart';

class OccasionWidget extends StatefulWidget {
  
  final Size size;
  final Occasion occasion;

  OccasionWidget({required this.size, required this.occasion});
  @override
  createState() => OccasionState();
}

class OccasionState extends State<OccasionWidget> {
  @override
  Widget build(BuildContext context) {
     return Container(
      child:  Column(
        children: [
          SizedBox(
            height: widget.size.height,
            width: widget.size.width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(widget.occasion.path, fit: BoxFit.cover,),
            ),
          )
        ],
      ),
     );
  }
}
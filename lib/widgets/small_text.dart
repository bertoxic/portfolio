
import 'dart:html';

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
   SmallText({Key? key,required this.text,this.align,this.size=20}) : super(key: key);
 String text;
 TextAlign? align;
  double? size=24;
   double? msize=16;
  @override
  Widget build(BuildContext context) {
       return Container( padding: EdgeInsets.symmetric(vertical:4),
      child: Text(text,
      style: TextStyle(color: Colors.white,
      //fontFamily: 'Papyrus'
        wordSpacing: 3,
        height: 1.5,
        fontSize:size,
      ), textAlign: align,
      ),

    );
  }
}

import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
   ContactMe({Key? key,required this.screenSize}) : super(key: key);
double screenSize;


  @override
  Widget build(BuildContext context) {
    return Container(
     child: Column(
        children: [Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container( height: screenSize*0.05, width: screenSize*0.25,
              child: TextField(decoration: InputDecoration(
                filled: true,
                  enabled: true,
                  fillColor: Color(0xf4c5c4c4))),
            ),
            Container( height: screenSize*0.05, width: screenSize*0.25,
              child: TextField(decoration: InputDecoration(
                  filled: true,
                  enabled: true,
                  fillColor: Color(0xf4c5c4c4))),
            ),
          ],
        ),
          Container( height: screenSize*0.05, width: screenSize*0.25,
            child: TextField(decoration: InputDecoration(
                filled: true,
                enabled: true,
                fillColor: Color(0xf4c5c4c4))),
          ),
          Container( height: screenSize*0.1, width: screenSize*0.4,
            child: TextField(decoration: InputDecoration(
                filled: true,
                enabled: true,
                fillColor: Color(0xf4c5c4c4))),
          ),
        ]),
    );
  }
}

import 'package:flutter/material.dart';

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;
  final String? s4;
  final String? s5;

  BottomBarColumn({
    required this.heading,
    required this.s1,
    required this.s2,
    required this.s3,
     this.s4,
     this.s5,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              heading,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(children: [
            Text(
              s1,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
               // fontWeight: FontWeight.w100,
              ),
            ),  SizedBox(
              width: 30,
            ),
            Text(
              s2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                //fontWeight: FontWeight.w100,
              ),
            ),
          ],),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

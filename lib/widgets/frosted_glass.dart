import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedGlass extends StatelessWidget {
  const FrostedGlass({Key? key, this.height, this.width,this.child}) : super(key: key);

  final height;
  final width;
  final child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: width,
        height: height,
        color: Colors.white.withOpacity(0.04),
        child: Stack(children: [
          BackdropFilter(child:Container(),
              filter: ImageFilter.blur(sigmaX: 10,sigmaY: 8)

          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white.withOpacity(0.13)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.15),
                  Colors.white.withOpacity(0.05)
                ],
              ),
            ),
            child: child,
          )
        ],),
      ),

    );
  }
}

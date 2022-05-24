
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_web/screens/home_page.dart';
import 'package:flutter_web/widgets/frosted_glass.dart';

class FlipCard extends StatefulWidget {
   FlipCard({Key? key,this.screenSize,this.child,this.backchild}) : super(key: key);
  var screenSize;
  Widget ?child;
   Widget ?backchild;

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> with TickerProviderStateMixin{
  late AnimationController controller;
  late Animation<double>animation;
  @override
  void initState() {
   controller= AnimationController(
       duration:Duration(seconds: 1),vsync: this);
    super.initState();
  }
  bool isFront=false;
  double rotatedir=0;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (value){
       setState(() {
          isFront=value;
         if(value){
           controller.forward(from: 0.5);
           controller.addListener(() {
             setState(() {

             });
             rotatedir=controller.value*360;
           });
         }else{
           setState(() {
             controller.reverse(from: 0.3);
             rotatedir=controller.value;
           });

         }
        //
                   print(rotatedir.toString());
          print(controller.status.toString());
       });
      },
      child: Transform(transform: Matrix4.identity()
          ..setEntry(3,2,0.001)
          ..rotateY(rotatedir/180*pi),
            alignment: Alignment.center,
      child:isFront?FrostedGlass(child: Container( padding: EdgeInsets.all(widget.screenSize.width*0.02),
        child: widget.backchild,//Text(controller.value.toString()),
        height: widget.screenSize.height*0.4,color: Colors.black.withOpacity(0.5),),):
      Transform( transform:
      Matrix4.identity()..setEntry(3,2,0.001)..rotateY(rotatedir/168*pi),alignment: Alignment.center,
          child: Padding( padding: EdgeInsets.all(widget.screenSize.width*0.01),
            child: FrostedGlass(
              child:Container(  padding: EdgeInsets.all(widget.screenSize.width*0.02),
                child: widget.child,
              height: widget.screenSize.height*0.4,color: Colors.transparent,),),
          ))),
    );
  }
}

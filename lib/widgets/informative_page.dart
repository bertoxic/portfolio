import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  InfoPage({Key? key,this.children}) : super(key: key);
  List<Widget>? children;
  @override
  Widget build(BuildContext context) { var screensize= MediaQuery.of(context).size;
    return Container( padding: EdgeInsets.only(left:screensize.width*0.02),
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children:children!)

    );
  }
}


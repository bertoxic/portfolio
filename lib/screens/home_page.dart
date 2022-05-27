import 'package:flutter/cupertino.dart';
import 'package:flutter_web/screens/page_scroll_content.dart';
import 'package:flutter_web/widgets/button_column.dart';
import 'package:flutter_web/widgets/frosted_glass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/menu_drawer.dart';

import '../widgets/top_bar_contents.dart';
import 'Mobile_scroll_content.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;


    return Container( decoration: (BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/background1.jpg'),fit: BoxFit.cover))),
      child: Scaffold( backgroundColor: Colors.black.withOpacity(0.1),
        appBar:screenSize.width<=800? AppBar(iconTheme: IconThemeData(color: Colors.white),
          elevation: 0,backgroundColor: Colors.white.withOpacity(0.1),):null,
        // PreferredSize(preferredSize: Size(screenSize.width,70), child: TopBarContents(_opacity),),
        drawer: MenuDrawer(),
        body: Container(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: screenSize.width*0.06,bottom: 30,top: 10),
                child:  screenSize.width>=800?
                FrostedGlass( height: screenSize.height*0.9,width: screenSize.width*0.2,
                  child: Column(children: [
                    Expanded(
                      child: Container( width: screenSize.width*0.3, height: 400,
                        decoration: (BoxDecoration(borderRadius: BorderRadius.circular(8))),
                        child: SizedBox(
                          height: screenSize.height * 0.15,
                          width: screenSize.width,
                          child: Image.asset(
                            'assets/images/profileme11jpg.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    ButtonColumn(_opacity),
                  ],),
                ):null,
              ),
              SizedBox(width: screenSize.width/15,),
              Expanded(
                child: Container( padding: EdgeInsets.only(right: screenSize.width*0.01,),
                  child: SingleChildScrollView( padding: EdgeInsets.only(right: screenSize.width*0.05),
                    child: Column(
                        children: [
                          PageScrollContent(screenSize: screenSize),

                        ],
                      ),
                  ),
                ),
              ),
            ],
          )

        ),

      ),
    );
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonColumn extends StatefulWidget {
  final double? opacity;

  ButtonColumn(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<ButtonColumn> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
 double space=0;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
     // color: Colors.white.withOpacity(widget.opacity),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: screenSize.width/50,),
                  Text(
                    'Oraezu Albert',
                    style: TextStyle(
                      color: Color(0xffd9dde0),
                      fontSize: 26,
                      fontFamily: 'PingFang TC',
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                    ),
                  ),
                  Text(
                    'Flutter Mobile Dev/Web Design',textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffd9dde0),
                      fontSize: 12,
                      //fontFamily: 'Electrolize',
                      fontWeight: FontWeight.w900,
                      letterSpacing: 3,
                    ),
                  ),
                  SizedBox(height: screenSize.width / 40),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[0] = true
                            : _isHovering[0] = false;
                        //print(_isHovering[0]);
                      });
                    },
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(  margin: EdgeInsets.only(bottom: space),
                          decoration:BoxDecoration(color: _isHovering[0]
                              ? Color(0xfffcfbfb).withOpacity(1)
                              : Color(0xfff3f0f0).withOpacity(0),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.white.withOpacity(0.2)),
                           //  boxShadow: [BoxShadow(offset: _isHovering[0]?Offset(-6,-6): Offset(6,6),color: Color(0xf0efebeb).withOpacity(0.2),
                           //      spreadRadius: 1,blurRadius: 15),
                           //    BoxShadow(offset:  _isHovering[0]?Offset(6,6): Offset(-6,-6),color: Colors.white.withOpacity(0.1),
                           //        spreadRadius: 1,blurRadius: 5)
                           // ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
                            child: Center(
                              child: Text(_isHovering[0]?
                                'Albert Oraezu':'Know Me',
                                style: TextStyle(
                                    color: _isHovering[0]
                                        ? Color(0xff252424)
                                        : Color(0xffbebec2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[0],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color(0xFF051441),
                          ),
                        )
                      ],
                    ),
                  ),  
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[1] = true
                            : _isHovering[1] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(  margin: EdgeInsets.only(bottom: space),
                          decoration:BoxDecoration(color: _isHovering[1]
                              ? Color(0xfffcfbfb).withOpacity(1)
                              : Color(0xfff3f0f0).withOpacity(0),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.white.withOpacity(0.2)),
                            //  boxShadow: [BoxShadow(offset: _isHovering[0]?Offset(-6,-6): Offset(6,6),color: Color(0xf0efebeb).withOpacity(0.2),
                            //      spreadRadius: 1,blurRadius: 15),
                            //    BoxShadow(offset:  _isHovering[0]?Offset(6,6): Offset(-6,-6),color: Colors.white.withOpacity(0.1),
                            //        spreadRadius: 1,blurRadius: 5)
                            // ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
                            child: Center(
                              child: Text(_isHovering[1]?
                              'Bio':'Bio',
                                style: TextStyle(
                                    color: _isHovering[1]
                                        ? Color(0xff252424)
                                        : Color(0xffbebec2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[1],
                          child: Container(
                            height: 2,
                            width: 20,
                            color: Color(0xFF051441),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[2] = true
                            : _isHovering[2] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(  margin: EdgeInsets.only(bottom: space),
                          decoration:BoxDecoration(color: _isHovering[2]
                              ? Color(0xfffcfbfb).withOpacity(1)
                              : Color(0xfff3f0f0).withOpacity(0),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.white.withOpacity(0.2)),
                            //  boxShadow: [BoxShadow(offset: _isHovering[0]?Offset(-6,-6): Offset(6,6),color: Color(0xf0efebeb).withOpacity(0.2),
                            //      spreadRadius: 1,blurRadius: 15),
                            //    BoxShadow(offset:  _isHovering[0]?Offset(6,6): Offset(-6,-6),color: Colors.white.withOpacity(0.1),
                            //        spreadRadius: 1,blurRadius: 5)
                            // ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
                            child: Center(
                              child: Text(_isHovering[2]?
                              'Mystack':'Mystack',
                                style: TextStyle(
                                    color: _isHovering[2]
                                        ? Color(0xff252424)
                                        : Color(0xffbebec2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 3),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[2],
                          child: Container(
                            height: 1,
                            width: 5,
                            color: Color(0xFFEFF0F3),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        value
                            ? _isHovering[3] = true
                            : _isHovering[3] = false;
                      });
                    },
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(  margin: EdgeInsets.only(bottom: space),
                          decoration:BoxDecoration(color: _isHovering[3]
                              ? Color(0xfffcfbfb).withOpacity(1)
                              : Color(0xfff3f0f0).withOpacity(0),
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.white.withOpacity(0.2)),
                            //  boxShadow: [BoxShadow(offset: _isHovering[0]?Offset(-6,-6): Offset(6,6),color: Color(0xf0efebeb).withOpacity(0.2),
                            //      spreadRadius: 1,blurRadius: 15),
                            //    BoxShadow(offset:  _isHovering[0]?Offset(6,6): Offset(-6,-6),color: Colors.white.withOpacity(0.1),
                            //        spreadRadius: 1,blurRadius: 5)
                            // ]
                          ),
                          child: Padding(
                            padding:  EdgeInsets.symmetric(vertical: 16,horizontal: 20),
                            child: Center(
                              child: Text(_isHovering[3]?
                              'Projects':'Projects',
                                style: TextStyle(
                                    color: _isHovering[3]
                                        ? Color(0xff252424)
                                        : Color(0xffbebec2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Visibility(
                          maintainAnimation: true,
                          maintainState: true,
                          maintainSize: true,
                          visible: _isHovering[3],
                          child: Container(
                            height: 1,
                            width: 20,
                            color: Color(0xFFEFF0F3),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container( padding: EdgeInsets.all(5),
                    child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Expanded(child: InkWell( onTap: (){launchUrl(Uri.parse('https://www.figma.com/@bertoxic'));},
                          child: Icon(FontAwesomeIcons.figma,color: Colors.white,))),
                      Expanded(child: InkWell( onTap: (){launchUrl(Uri.parse('https://twitter.com/Bertoxics?t=qmq25-M5V6dfZtP_uhYo3Q&s=08'),);},
                          child: Icon(FontAwesomeIcons.twitter,color: Colors.blueAccent,))),
                      Expanded(child: InkWell( onTap: (){launchUrl(Uri.parse('https://www.linkedin.com/in/albert-oraezu-54838a234'));},
                          child: Icon(FontAwesomeIcons.linkedinIn,color: Colors.white,))),
                      Expanded(
                        child: InkWell( onTap: (){launchUrl(Uri.parse('https://github.com/bertoxic'));},
                            child: Icon(FontAwesomeIcons.github,color: Colors.white,)),
                      ),
                    ],),
                  )

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/bottom_bar_column.dart';
import 'package:flutter_web/widgets/carousel.dart';
import 'package:flutter_web/widgets/informative_page.dart';
import 'package:flutter_web/widgets/small_text.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/frosted_glass.dart';
import '../widgets/videopage.dart';

class MobileScrollContent extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    final Size screenSize= MediaQuery.of(context).size;
    return Stack(
      children: [
        Container( //padding: EdgeInsets.only(right: screenSize.width*0.02),
          width:screenSize.width, //decoration: (BoxDecoration(border: Border.all(color: Colors.white))),
          child: Expanded(
            child: Column(
              children: [
                 SizedBox(height: screenSize.width*0.1,),
                 Text('Know Me',style: TextStyle(fontSize: 36,color: Colors.white),),
                 SizedBox(width: screenSize.width*0.1,child: Divider(thickness: 1,color: Colors.red,),),
                 SizedBox(height: 20,),
                 SmallText( size: screenSize.width>=800?18:14,
                   text:' I am Mobile developer, web Designer, flutter web developer,graphic designer and Illustrator,mixing freelance work with school, i am a final year student of '
                       'Pharmacy. Currently have over three years of graphic design and illustration experience and over a year experience in web design and Mobile development, i am '
                       'innovative and able to produce mobile application from concept to launch,combining both my skills in UI/UX design for better web and mobile experience for the users',
                     align: TextAlign.center,           ),
                SizedBox(height: screenSize.width*0.2,),
                FrostedGlass( width: screenSize.width, height: screenSize.width ,
                  child: Column( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container( width: screenSize.width*0.4, height: screenSize.height*0.3,
                        child: Image.asset(
                          'assets/images/animals.jpg',
                          fit: BoxFit.cover,
                        ),
                      ), SizedBox(width: screenSize.width*0.01,),

                      Container( padding: EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.02,bottom:screenSize.width*0.02  ),
                        child: InfoPage(
                          children: [
                            Text('Interests',style: TextStyle(color: Colors.white,fontFamily: 'Palatino',fontSize: 28),),
                            SizedBox(height: screenSize.width*0.005,),
                            SmallText(text: 'Programming',size: 14,),
                            SmallText(text: 'Art and Painting',size: 14,),
                            SmallText(text: 'Exercise',size: 14,),
                            SmallText(text: 'Movies',size: 14,),
                            SmallText(text: 'Hunting',size: 14,),

                          ],),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: screenSize.width*0.1,child: Divider(thickness: 0.5,color: Colors.grey),),
                SizedBox(height: screenSize.width*0.01,),
                Container(
                  child: screenSize.width>=800?
                  Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                          child: InfoPage(children: [
                            Text('Bio',style: TextStyle(color: Colors.white,fontFamily: 'Palatino',fontSize: 36),),
                            SizedBox(height: screenSize.width*0.005,),
                            SmallText(text: 'Name: Oraezu Albert',),
                            SmallText(text: 'Gender: Male',),
                            SmallText(text: 'Roles: Web Designer, Programmer, Illustrator',),
                            SmallText(text: 'Race: Earth',),
                            SmallText(text: 'Email:Dirusalbert@gmail.com',),
                            SizedBox(height: screenSize.width*0.01,),
                            Row( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(  onTap: (){
                                  launchUrl(Uri.parse('https://drive.google.com/file/d/1OYESfdzPfDp0VR9X4aOfrhzNgSAUhoUv/view?usp=sharing'));
                                },
                                  child: Container( padding: EdgeInsets.all(15),
                                    decoration: (BoxDecoration(color: Colors.grey.shade200,
                                        borderRadius:BorderRadius.circular(10))),
                                    child:Text('View Resume',style: TextStyle(color: Colors.grey.shade800),),),
                                )
                              ],
                            ),

                          ],),
                        ),
                      ),
                      SizedBox(width: screenSize.width*0.01,),
                      Expanded(
                        child: Container( width: screenSize.width*0.4, height: screenSize.height*0.5,
                          child: Image.asset(
                            'assets/images/face.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),



                    ],
                  ):
                  Column( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container( padding: EdgeInsets.only(top: screenSize.height*0.02,left: screenSize.width*0.02,bottom:screenSize.width*0.02  ),
                        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bio',style: TextStyle(color: Colors.white,fontFamily: 'Palatino',fontSize: 28),),
                            SizedBox(height: screenSize.width*0.005,),
                            SmallText(text: 'Name: Oraezu Albert',size: 14,),
                            SmallText(text: 'Gender: Male',size: 14,),
                            SmallText(text: 'Roles: Web Designer, Programmer, Illustrator',size: 14,),
                            SmallText(text: 'Race: Earth',size: 14,),
                            SmallText(text: 'Email:Dirusalbert@gmail.com',size: 14,),
                            SizedBox(height: screenSize.width*0.01,),
                            Row( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(  onTap: (){
                                  launchUrl(Uri.parse('https://drive.google.com/file/d/1OYESfdzPfDp0VR9X4aOfrhzNgSAUhoUv/view?usp=sharing'));
                                },
                                  child: Container( padding: EdgeInsets.all(15),
                                    decoration: (BoxDecoration(color: Colors.grey.shade200,
                                        borderRadius:BorderRadius.circular(10))),
                                    child:Text('View Resume',style: TextStyle(color: Colors.grey.shade800),),),
                                )
                              ],
                            ),

                          ],),
                      ),
                      SizedBox(width: screenSize.width*0.01,),
                      Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container( padding: EdgeInsets.only(left:screenSize.width*0.02,bottom:screenSize.width*0.02, ),
                            width: screenSize.width*0.4, height: screenSize.height*0.3,
                            child: Image.asset(
                              'assets/images/face.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),



                    ],
                  ),
                ),

                SizedBox(height: screenSize.width*0.2,child: Divider(thickness: 1,color: Colors.grey,),),
                Center(child:
                Column( mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container( margin: EdgeInsets.symmetric(horizontal: screenSize.width*0.03),
                      child:Column(children: [
                        Text('My Stack',style: TextStyle(fontSize: 36,color: Colors.white),),
                        SizedBox(width: screenSize.width*0.1,child: Divider(thickness: 1,color: Colors.red,),),
                        SizedBox(height: 20,),
                        SmallText( size: 16,
                          text:'After completing various relevant courses on fullstack mobile development,as well as ux/ui . i have obtained relevant skills '
                              'such as flutter , dart ,state Management, firebase and integration of RestAPI into mobile and web apps,use of Figma to design useable and attractive interface',
                          align: TextAlign.center,           )
                      ],)),
                    SizedBox(height: screenSize.height*0.04,),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Expanded(child: FrostedGlass( height: screenSize.height*0.5,
                        //screenSize: screenSize,
                        child:Column(
                          children: [
                            Expanded(
                              child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container( padding: EdgeInsets.symmetric(vertical: screenSize.width*0.02,horizontal:screenSize.height*0.02, ),
                                      child: Text(' Skilled in the use of Dart programming language in creation of interactive and responsive functionality of mobile apps ,web and software'
                                          ' for both android, windows and mac ',
                                        style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                    ),
                                  ),
                                  SizedBox(width: screenSize.width*0.01,),
                                  Expanded(
                                    child: Container( padding: EdgeInsets.symmetric(vertical: screenSize.width*0.02,horizontal:screenSize.height*0.02, ),
                                      width: screenSize.width*0.4, height: screenSize.height*0.4,
                                      child: Image.asset(
                                        'assets/images/iconpic/daerbird.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: screenSize.width*0.01,),
                            Expanded(
                              child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container( padding: EdgeInsets.symmetric(vertical: screenSize.width*0.02,horizontal:screenSize.height*0.02, ),
                                      width: screenSize.width*0.4, height: screenSize.height*0.4,
                                      child: Image.asset(
                                        'assets/images/iconpic/flutter.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: screenSize.width*0.01,),
                                  Expanded(
                                    child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                                      child: Text('Extensive knowledge in the use of flutter framework for developing interactive cross platform UI',
                                        style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                      // backchild: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Expanded(
                      //       child: Center(
                      //         child: Column(
                      //           children: [
                      //             Container(// width: screenSize.width*0.4, height: screenSize.height*0.4,
                      //               child: Image.asset(
                      //                 'assets/images/iconpic/adobe.png',
                      //                 fit: BoxFit.contain,
                      //               ),
                      //             ),
                      //             ],
                      //         ),
                      //       ),
                      //     ), SizedBox(width: screenSize.width*0.01,),
                      //
                      //     Expanded(
                      //       child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                      //         child: Text(' Over four years experience in the use of Adobe illustrator in making of beautiful illustrations, logos and fliers as well as customized icons',
                      //           style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                      //       ),
                      //     ),
                      //
                      //   ],
                      // ),
                      )),
                        // SizedBox(width: screenSize.width*0.04,),

                    ],),
                    SizedBox(height: screenSize.height*0.04,),
                    Row(children: [
                      Expanded(child: FrostedGlass( height: screenSize.height*0.5,
                        //screenSize: screenSize,
                        child:Column(
                          children: [
                            Expanded(
                              child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container( padding: EdgeInsets.symmetric(vertical: screenSize.width*0.02,horizontal:screenSize.height*0.02, ),
                                      child: Text(' Use of firebase and various of it\'s interations for user authentication,creation and database  ',
                                        style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                    ),
                                  ),
                                  SizedBox(width: screenSize.width*0.01,),
                                  Expanded(
                                    child: Container( padding: EdgeInsets.symmetric(vertical: screenSize.width*0.02,horizontal:screenSize.height*0.02, ),
                                      width: screenSize.width*0.4, height: screenSize.height*0.4,
                                      child: Image.asset(
                                        'assets/images/iconpic/firebase.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: screenSize.width*0.01,),
                            Expanded(
                              child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container( padding: EdgeInsets.symmetric(vertical: screenSize.width*0.02,horizontal:screenSize.height*0.02, ),
                                      width: screenSize.width*0.4, height: screenSize.height*0.4,
                                      child: Image.asset(
                                        'assets/images/iconpic/javaicon.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: screenSize.width*0.01,),
                                  Expanded(
                                    child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                                      child: Text('Basic understanding of java and its syntax',
                                        style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),
                        // backchild: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [
                        //     Expanded(
                        //       child: Center(
                        //         child: Column(
                        //           children: [
                        //             Container(// width: screenSize.width*0.4, height: screenSize.height*0.4,
                        //               child: Image.asset(
                        //                 'assets/images/iconpic/adobe.png',
                        //                 fit: BoxFit.contain,
                        //               ),
                        //             ),
                        //             ],
                        //         ),
                        //       ),
                        //     ), SizedBox(width: screenSize.width*0.01,),
                        //
                        //     Expanded(
                        //       child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                        //         child: Text(' Over four years experience in the use of Adobe illustrator in making of beautiful illustrations, logos and fliers as well as customized icons',
                        //           style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                        //       ),
                        //     ),
                        //
                        //   ],
                        // ),
                      )),
                    ],),
                    SizedBox(height: screenSize.height*0.04,),
                    Row(children: [
                      Expanded(child: FrostedGlass( height: screenSize.height*0.5,
                        //screenSize: screenSize,
                        child:Column(
                          children: [
                            Expanded(
                              child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(  padding: EdgeInsets.symmetric(vertical: screenSize.width*0.02,horizontal:screenSize.height*0.02,),
                                child: Text('Over four years experience in the use of ClipStudio for creation of beautiful illustrations',
                                        style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                    ),
                                  ),
                                  SizedBox(width: screenSize.width*0.01,),
                                  Expanded(
                                    child: Container( padding: EdgeInsets.symmetric(vertical: screenSize.width*0.02,horizontal:screenSize.height*0.02,),
                                      width: screenSize.width*0.4, height: screenSize.height*0.4,
                                      child: Image.asset(
                                        'assets/images/iconpic/clipstudio.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(height: screenSize.width*0.01,),
                            Expanded(
                              child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container( padding: EdgeInsets.symmetric(vertical: screenSize.width*0.02,horizontal:screenSize.height*0.02,),
                                      width: screenSize.width*0.4, height: screenSize.height*0.4,
                                      child: Image.asset(
                                        'assets/images/iconpic/pngwing.com (9).png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),

                                  SizedBox(width: screenSize.width*0.01,),
                                  Expanded(
                                    child: Container( padding: EdgeInsets.symmetric(vertical: screenSize.width*0.02,horizontal:screenSize.height*0.02,),
                                      child: Text('Proficient skill in the use of photoshop and its various integrations',
                                        style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ],
                        ),

                      )),
                    ],),
                    SizedBox(height: screenSize.height*0.04,),
                     Row(
                      children: [
                        Expanded(
                          child: Container(height: screenSize.height*0.4,width: screenSize.width*0.8,
                            child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                children: [  SizedBox(width: screenSize.width*0.02,),
                           Expanded(
                             child: Column(children: [
                               Expanded(
                                 child: Row(children: [
                                   Expanded(
                                     child: Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
                                       child: Image.asset(
                                         'assets/images/iconpic/phonehand.png',
                                         fit: BoxFit.contain,
                                       ),
                                     ),
                                   ),
                                   SizedBox(width: screenSize.width*0.02,),

                                   Expanded(
                                     child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                                       child: Center(
                                         child: Text('Mobile development  using flutter and dart a cross platform programing language/framework,for development on andriod and ios',
                                           style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                       ),
                                     ),
                                   ),
                                 ],),
                               )
                             ],),
                           ),
                  SizedBox(width: screenSize.width*0.02,),

                 // Container(child: Row(children: [
                 //   Expanded(
                 //     child: Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
                 //       child: Image.asset(
                 //         'assets/images/iconpic/figma.png',
                 //         fit: BoxFit.contain,
                 //       ),
                 //     ),
                 //   ),
                 //   SizedBox(width: screenSize.width*0.02,),
                 //   Expanded(
                 //     child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                 //       child: Center(
                 //         child: Text('One year experience in the use of Figma for creation of beautiful and usable web and mobile app designs ',
                 //           style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                 //       ),
                 //     ),
                 //   ),
                 // ],),)


                ],
                ),),
                        ),
                      ],
                    ),

                    Row(children: [
                    Expanded(
                      child: Container(child:
                      Row(children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
                                  child: Image.asset(
                                    'assets/images/iconpic/figma.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: screenSize.width*0.02,),
                          Expanded(
                            child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                              child: Center(
                                child: Text('One year experience in the use of Figma for creation of beautiful and usable web and mobile app designs ',
                                  style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                              ),
                            ),
                          ),
                        ],),)


                                ,
                    )],
                ),
                SizedBox(height: screenSize.width*0.1,child: Divider(thickness: 0.5,color: Colors.white,),),
                Container(  height: 400,
                  child: Column(
                    children: [  Text(' Food delivery App ',style: TextStyle(fontSize: 28,color: Colors.white),),
                      SizedBox(height: screenSize.width*0.02,),
                      Expanded(
                        child: SizedBox(
                          // height: screenSize.height * 0.15,
                          // width: screenSize.width,
                          child: VideoPage(videoUrl: '/videos/mainfood.mp4',)
                          // VideoPage(videoUrl: '/videos/mainfood.mp4',),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenSize.width*0.1,child: Divider(thickness: 0.5,color: Colors.white,),),
                // ContactMe(
                //   screenSize: screenSize.width,),
                Container(child: Column(
                  children: [  Text('Projects',style: TextStyle(fontSize: 36,color: Colors.white),),
                    SizedBox(height: screenSize.width*0.02,),
                    MainCarousel(),
                  ],
                )),
                SizedBox(height: screenSize.width*0.02,child: Divider(thickness: 0.5,color: Colors.white,),),

                FrostedGlass( //color: Colors.blueAccent, padding: EdgeInsets.all(screenSize.width*0.02),
                    child: Padding(
                      padding: EdgeInsets.all(screenSize.width*0.02),
                      child: BottomBarColumn(heading: "Contacts", s1: 'Email: Chuksa3@gmail.com', s2: 'Phone: +2348104453238', s3: 'Bertoxic'),
                    ))
              ],
        ),


        )
        ]),
          )
        ),
      ],
    );
  }
}
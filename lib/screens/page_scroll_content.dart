import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/bottom_bar_column.dart';
import 'package:flutter_web/widgets/carousel.dart';
import 'package:flutter_web/widgets/contactme_page.dart';
import 'package:flutter_web/widgets/flipping_card.dart';
import 'package:flutter_web/widgets/informative_page.dart';
import 'package:flutter_web/widgets/small_text.dart';
import 'package:flutter_web/widgets/videocaro.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import '../widgets/frosted_glass.dart';
import '../widgets/videopage.dart';

class PageScrollContent extends StatelessWidget {
  const PageScrollContent({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(//top: screenSize.height*0.3,
          child: Container( padding: EdgeInsets.only(right: screenSize.width*0.02),
            width:screenSize.width, //decoration: (BoxDecoration(border: Border.all(color: Colors.white))),
            child: Column(
              children: [
                Center(
                  child: Container( margin: EdgeInsets.symmetric(horizontal: screenSize.width*0.03),
                      child:Column(children: [
                        SizedBox(height: screenSize.width*0.04,),
                        Text('Know Me',style: TextStyle(fontSize: 36,color: Colors.white),),
                        SizedBox(height: 20,),
                        SmallText( size: 24,
                          text:' I am Mobile developer, web Designer, flutter web developer,graphic designer and Illustrator,mixing freelance work with school, i am a final year student of '
                              'Pharmacy. Currently have over three years of graphic design and illustration experience and over a year experience in web design and Mobile development, i am '
                              'innovative and able to produce mobile application from concept to launch,combining both my skills in UI/UX design for better web and mobile experience for the users',
                            align: TextAlign.center,           )
                      ],)),
                ),
                SizedBox(height: screenSize.width*0.05,),
                FrostedGlass(
                  child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container( width: screenSize.width*0.4, height: screenSize.height*0.5,
                          child: Image.asset(
                            'assets/images/animals.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ), SizedBox(width: screenSize.width*0.01,),

                      Expanded(
                        child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                            child: InfoPage(children: [
                              Text('Interests',style: TextStyle(color: Colors.white,fontFamily: 'Palatino',fontSize: 36),),
                              SizedBox(height: screenSize.width*0.005,),
                              SmallText(text: 'Programming',),
                              SmallText(text: 'Art and Painting',),
                              SmallText(text: 'Exercise',),
                              SmallText(text: 'Movies',),
                              SmallText(text: 'Hunting',),

                                      ],),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: screenSize.width*0.1,child: Divider(thickness: 0.5,color: Colors.white,),),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                          child:Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),height:screenSize.height*0.5 ,
                              child:Expanded(
                                child: Column(children: [
                                  Row(  mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                    Text('Bio',style: TextStyle(color: Colors.white,fontFamily: 'Palatino',fontSize: 34),),
                                    SizedBox(height: screenSize.width*0.005,),
                                  ],),
                                  Row( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SmallText(text: 'Name:  ',),
                                      Expanded(child: SmallText(text: 'Oraezu Chukwuemeka Albert',)),
                                    ],
                                  ),
                                  Row( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SmallText(text: 'Sex:  ',),
                                      Expanded(child: SmallText(text: '    Male',)),
                                    ],
                                  ),
                                  Row( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SmallText(text: 'Roles:  ',),
                                      Expanded(child: SmallText(text: ' Web Designer, Programmer, Illustrator',)),
                                    ],
                                  ),
                                  Row( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SmallText(text: 'Race:  ',),
                                      Expanded(child: SmallText(text: '  Earth',)),
                                    ],
                                  ),
                                  Row( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SmallText(text: 'Brand:  ',),
                                      Expanded(child: SmallText(text: 'BerTex ',)),
                                    ],
                                  ),
                                  Row( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SmallText(text: 'Email:  ',),
                                      Expanded(child: SmallText(text: ' Dirusalbert@gmail.com',)),
                                    ],
                                  ),
                                  SizedBox(height: screenSize.width*0.05,),
                                  Row( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(  onTap: (){
                                        launchUrl(Uri.parse('https://drive.google.com/file/d/1OYESfdzPfDp0VR9X4aOfrhzNgSAUhoUv/view?usp=sharing'));
                                      },
                                        child: Container(
                                          padding: EdgeInsets.all(15),
                                          decoration: (BoxDecoration(color: Colors.grey.shade200,
                                              borderRadius:BorderRadius.circular(10))),
                                          child:Text('View Resume',style: TextStyle(color: Colors.grey.shade800),),),
                                      )
                                    ],
                                  ),


                                ],),
                              ),
                            ),
                          ),
                          SizedBox(width: screenSize.width*0.01,),
                          Expanded(
                            child: Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
                              child: Image.asset(
                                'assets/images/face.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                        ],
                      ),),
                    ),
                  ],
                ),
                SizedBox(height: screenSize.width*0.08,child: Divider(thickness: 0.5,color: Colors.white,),),
                Center(child: Column( mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [ Container( margin: EdgeInsets.symmetric(horizontal: screenSize.width*0.03),
                      child:Column(children: [
                        Text('My Stack',style: TextStyle(fontSize: 36,color: Colors.white),),
                        SizedBox(width: screenSize.width*0.04,child: Divider(thickness: 0.5,color: Colors.white,),),
                        SizedBox(height: 20,),
                        SmallText( size: 20,
                          text:'After completing various relevant courses on fullstack mobile development,as well as ux/ui . i have obtained relevant skills '
                              'such as flutter , dart ,state Management, firebase and integration of RestAPI into mobile and web apps,use of Figma to design useable and attractive interface',
                          align: TextAlign.center,           )
                      ],)),
                    SizedBox(height: screenSize.width*0.04,),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Expanded(child: FlipCard(screenSize: screenSize,
                        child:Column(
                          children: [
                            Expanded(
                              child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                                      child: Text(' Skilled in the use of Dart programming language in creation of interactive and responsive functionality of mobile apps ,web and software'
                                          ' for both android, windows and mac ',
                                        style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                    ),
                                  ),
                                  SizedBox(width: screenSize.width*0.01,),
                                  Expanded(
                                    child: Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
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
                                    child: Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
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
                      backchild: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Center(  
                              child: Column(
                                children: [
                                  Container(// width: screenSize.width*0.4, height: screenSize.height*0.4,
                                    child: Image.asset(
                                      'assets/images/iconpic/adobe.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  ],
                              ),
                            ),
                          ), SizedBox(width: screenSize.width*0.01,),

                          Expanded(
                            child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                              child: Text(' Over four years experience in the use of Adobe illustrator in making of beautiful illustrations, logos and fliers as well as customized icons',
                                style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                            ),
                          ),

                        ],
                      ),
                      )),
                        Expanded(child: FlipCard(screenSize: screenSize,
                          child:Column(
                            children: [
                              Expanded(
                                child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                                        child: Text('Use of firebase and various of it\'s integrations for user authentication,creation and database ',
                                          style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                      ),
                                    ),
                                    SizedBox(width: screenSize.width*0.01,),
                                    Expanded(
                                      child: Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
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
                                      child: Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
                                        child: Image.asset(
                                          'assets/images/iconpic/javaicon.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: screenSize.width*0.01,),
                                    Expanded(
                                      child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                                        child: Text(' Basic understanding of java and it\'s syntax',
                                          style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                          backchild: Column(
                            children: [
                              Expanded(
                                child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
                                        child: Text('Over four years experience in the use of ClipStudio for creation of beautiful illustrations',
                                          style: TextStyle(fontSize: 16,color: Colors.white,),textAlign: TextAlign.left,),
                                      ),
                                    ),
                                    SizedBox(width: screenSize.width*0.01,),
                                    Expanded(
                                      child: Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
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
                                      child: Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
                                        child: Image.asset(
                                          'assets/images/iconpic/pngwing.com (9).png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),

                                    SizedBox(width: screenSize.width*0.01,),
                                    Expanded(
                                      child: Container( padding: EdgeInsets.only(top: screenSize.height*0.02),
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
                        // SizedBox(width: screenSize.width*0.04,),

                    ],),
                    SizedBox(height: screenSize.width*0.02,),
                    Container(height: screenSize.height*0.4,width: screenSize.width*0.8,
                      child: Row( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                children: [  SizedBox(width: screenSize.width*0.02,),
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
                  SizedBox(width: screenSize.width*0.02,),

                  Expanded(
                    child: Container( width: screenSize.width*0.4, height: screenSize.height*0.4,
                      child: Image.asset(
                        'assets/images/iconpic/figma.png',
                        fit: BoxFit.contain,
                      ),
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


                ],
                ),)
                              ],
                )),
                SizedBox(height: screenSize.width*0.1,child: Divider(thickness: 0.5,color: Colors.white,),),
                Container(  height: 400,
                  child: Column(
                    children: [  Text(' Project ',style: TextStyle(fontSize: 36,color: Colors.white),),
                      SizedBox(height: screenSize.width*0.02,),
                      Expanded(
                        child: SizedBox(
                          height: screenSize.height * 0.15,
                          width: screenSize.width*0.4,
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
          ),
        )

      ],
    );
  }
}
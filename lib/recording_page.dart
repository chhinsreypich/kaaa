// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:troubling/constants/colors.dart';

import '../constants/fonts.dart';

/// RecordingPage ///
class RecordingPage extends StatelessWidget {
  const RecordingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
         //check klg ng mdg tt pg dak jorl sen te 
        backgroundColor :AppColors.background,
        elevation : 0,
        title : Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'lib/images/logo.png', 
              height: 50,
            ),
            Row(
              children: [
                //nav - ty 1
                TextButton(
                  onPressed : (){},
                  //ot ton add style te
                  child : Text(
                    '얩소개', 
                    style : AppFonts.bodyText1,
                  ),
                ),
                //nav - ty 2
                TextButton(
                  onPressed : (){},
                  //ot ton add style te
                  child : Text(
                    '앱제함', 
                    style : AppFonts.bodyText1,
                  ),
                ),
                //nav - ty 3
                TextButton(
                  onPressed : (){},
                  //ot ton add style te
                  child : Text(
                    '사진예약', 
                    style : AppFonts.bodyText1,
                  ),
                ),
                //nav - ty 4
                TextButton(
                  onPressed : (){},
                  //ot ton add style te
                  child : Text(
                    '마켓', 
                    style : AppFonts.bodyText1,
                  )
                ),
              ],
            )
          ],
        ),
      ),

      //Body(sec)
      body : Stack(
        children : [
          // background image
          Image.asset(
            'lib/images/rectangle1.png',
            fit: BoxFit.cover, 
            width: double.infinity,
            height: double.infinity,
          ),

          //content sec 
          Column(
            children : [
              //top sec: (OK)
              Expanded(
                flex : 3,
                child : Column(
                  mainAxisAlignment : MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius : 80,
                      backgroundImage: AssetImage('lib/images/MaskGroup.png'),
                    ),
                    SizedBox(height : 20),

                    //Pnher sa
                    Text(
                      '당신이 전하고 싶은 메시지를 녹음해주세요',
                      style : AppFonts.bodyText1,
                      textAlign : TextAlign.center,
                    ),
                    SizedBox(height : 10),

                    GestureDetector(
                      onTap : (){
                        //jam dak action jol tov
                      },
                      child : Stack(
                        alignment : Alignment.center,
                        children : [
                          Container(
                            width : 75,
                            height : 75,
                            decoration : BoxDecoration(
                              shape : BoxShape.circle,
                              border : Border.all(
                                color : AppColors.button, 
                                width : 5,
                              ),
                            ),
                          ),
                          Container(
                            width: 30, 
                            height: 30,
                            decoration: BoxDecoration(
                              color: AppColors.button, 
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(4), 
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height : 10),

                    //Record ptong
                    ElevatedButton(
                      onPressed : (){},
                      child : Text(
                        '녹음하기',
                        //add style pg (OK)
                        style : AppFonts.button,
                      ),
                      ///style bos elevated button 
                      style : ElevatedButton.styleFrom(
                        //dak color pg (OK)
                        backgroundColor : AppColors.primary,
                        padding : EdgeInsets.symmetric(
                          vertical : 12,
                          horizontal : 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ///sec krom 
              Expanded(
                flex : 2,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/images/rectangle.png'), 
                      fit: BoxFit.cover,
                  ),
                ),
                child : Column(
                  mainAxisAlignment : MainAxisAlignment.end,
                  children : [
                    Text(
                      'SMART interview 의 여정과 함께해주세요!',
                      //add style pg(OK)
                      style : AppFonts.footerText,
                    ),
                    SizedBox(height : 20),

                    //button 2 krom sec
                    Row(
                      mainAxisAlignment : MainAxisAlignment.center,
                      children : [
                        ElevatedButton(
                          onPressed : (){},
                          child : Text(
                            '앱 체험하러 가기',
                            //add style pg(OK)
                            style : AppFonts.button,
                          ),
                          style : ElevatedButton.styleFrom(
                            //dak color pg (OK)
                            backgroundColor : AppColors.primary,
                            padding : EdgeInsets.symmetric(
                              vertical : 12,
                              horizontal : 22,
                            ),
                          ),
                        ),
                        SizedBox(width : 10), //gap: 10 pi knea
                        ElevatedButton(
                          onPressed : (){},
                          child : Text(
                            '사전예약하러 가기',
                            //add style pg mak(OK)
                            style : AppFonts.button,
                          ),
                          style : ElevatedButton.styleFrom(
                            //dak color pg (OK)
                            backgroundColor : AppColors.primary,
                            padding : EdgeInsets.symmetric(
                              vertical : 12,
                              horizontal : 22,
                            ),
                          ),
                        ),
                      ],
                    ),

                    //last krom ai tae ah ng dak image kor mex?? ot yol 
                    //dak text jorl sen te 
                    SizedBox(height : 10),
                    Image.asset(
                      'lib/images/logo2.png', 
                      height: 50,
                    ),
                    SizedBox(height : 20),
                  ],
                ),
              ),
            ),
            ],
          ),
        ],
      ),
    );
  }
}


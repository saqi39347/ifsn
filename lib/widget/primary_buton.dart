import 'dart:ui';

import 'package:flutter/material.dart';

import '../assets/appassets.dart';

class PrimaryButton extends StatelessWidget {
  double height;
  double width;
  String buttonText;
  var buttonMargin;
  var buttonPadding;
  var buttonColor;
  TextStyle buttonTextStyle;
  Color shadowColor;
  BorderRadius buttonRadius;
  Function onPress;
  final loading;
  PrimaryButton({Key? key,this.loading=false,required this.height,required this.width,buttonColor,required this.buttonText,this.buttonMargin,this.buttonPadding,required this.buttonRadius,required this.buttonTextStyle,required this.onPress,required this.shadowColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            width: width,
            height: height-50,
            margin: EdgeInsets.only(left: 60, right: 60, top: 50),
            decoration: BoxDecoration(
                borderRadius:buttonRadius,
                // boxShadow: [BoxShadow(
                //     color: AppAssets.orangeColor.withOpacity(0.4),
                //     blurRadius: 30,
                //     spreadRadius: 20
                // )]
            ),
          ),
          Container(
            height: height,
            alignment: Alignment.center,
            width: width,
            margin: buttonMargin,
            padding: buttonPadding,
            decoration: BoxDecoration(
              color: AppAssets.whiteClr,
              borderRadius:buttonRadius,
            ),
            child: Center(child: loading?CircularProgressIndicator(color: Colors.white,):Text(buttonText,style: buttonTextStyle,maxLines: 1,overflow: TextOverflow.ellipsis,)),
          ),
        ],
      ),
      onTap: (){
        onPress();
      },
    );
  }
}

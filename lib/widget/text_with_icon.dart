import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets/appassets.dart';
class TextFiledWithIcon extends StatelessWidget {
  TextEditingController controller;
  String hint;
  var keyboardType;
  Function(String) onChange;
  Icon prefixicon;
  TextFiledWithIcon({required this.prefixicon,required this.controller, required this.hint, required this.keyboardType, required this.onChange, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.07,
      padding: const EdgeInsets.only(left: 15,right: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppAssets.whiteColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppAssets.textLightColor, width: 0.1),
        boxShadow: [
          BoxShadow(
            color: AppAssets.shadowColor.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 16,
            offset: const Offset(0, 3),
          )],
      ),
      child: TextFormField(
        cursorColor: AppAssets.textDarkColor,
        controller: controller,

        textAlign: TextAlign.start,
        maxLines: 1,

        style: AppAssets.latoRegular_textDarkColor_16,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: prefixicon,
          hintStyle: AppAssets.latoRegular_textLightColor_14,
          border: InputBorder.none,

        ),
        onChanged: onChange,
      ),
    );
  }
}

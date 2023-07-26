import 'dart:io';

import 'package:flutter/material.dart';
import '../../../assets/appassets.dart';
import '../../../widget/primary_buton.dart';
import '../../../widget/text_feild_without_icon.dart';

import 'package:image_picker/image_picker.dart';



class AddGroup extends StatefulWidget {
  const AddGroup({Key? key}) : super(key: key);

  @override
  State<AddGroup> createState() => _AddGroupState();
}

class _AddGroupState extends State<AddGroup> {
  TextEditingController nameController = TextEditingController();
  TextEditingController rollNumberController = TextEditingController();
  String? selectedSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppAssets.mybackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            GestureDetector(
                onTap: (){
                  Navigator.of(context).pop();
                }, child: Container(
                margin: EdgeInsets.only(left: 20,top: 20),
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_ios,color: AppAssets.whiteClr,))),
            SizedBox(height: 20,),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Add Group",style: TextStyle(color: AppAssets.whiteClr,fontSize: 20),)),

            SizedBox(height: 20,),
            TextFiledWithoutIcon(controller: nameController, hint: 'Group Name', keyboardType:TextInputType.text, onChange: (String ) {  },),
            SizedBox(height: 20,),
            TextFiledWithoutIcon(controller: rollNumberController, hint: 'Class', keyboardType:TextInputType.text, onChange: (String ) {  },),
            SizedBox(height: 20,),
            TextFiledWithoutIcon(controller: rollNumberController, hint: 'Description', keyboardType:TextInputType.text, onChange: (String ) {  },),
            SizedBox(height: 20,),

            PrimaryButton(
              height: MediaQuery.of(context).size.height*0.08,
              width: double.infinity,
              buttonText: 'Add',
              buttonRadius: BorderRadius.circular(8),
              buttonMargin: EdgeInsets.only(left: 20,right: 20),
              buttonTextStyle: TextStyle(
                  color: AppAssets.mybackgroundColor,
                  fontFamily: AppAssets.poppinsRegular),
              onPress: (){},
              shadowColor:  AppAssets.shadowColor,
            )
          ],
        ),
      ),
    );
  }
}

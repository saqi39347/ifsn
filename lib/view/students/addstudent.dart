import 'dart:io';

import 'package:flutter/material.dart';
import '../../assets/appassets.dart';
import '../../widget/primary_buton.dart';
import 'package:image_picker/image_picker.dart';

import '../../widget/text_feild_without_icon.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
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
                child: Text("Add Student",style: TextStyle(color: AppAssets.whiteClr,fontSize: 20),)),

            SizedBox(height: 20,),
            TextFiledWithoutIcon(controller: nameController, hint: 'Name', keyboardType:TextInputType.text, onChange: (String ) {  },),
            SizedBox(height: 20,),
            TextFiledWithoutIcon(controller: rollNumberController, hint: 'Session', keyboardType:TextInputType.text, onChange: (String ) {  },),
            SizedBox(height: 20,),
            TextFiledWithoutIcon(controller: rollNumberController, hint: 'Roll Number', keyboardType:TextInputType.text, onChange: (String ) {  },),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                  color: AppAssets.lightGrayWhite,
                  borderRadius: BorderRadius.circular(8),

                ),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration.collapsed(hintText: ''),
                  hint: Text('Select Section'),
                  value: selectedSection,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedSection = newValue;
                    });
                  },
                  items: <String>['Regular', 'Self']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(value,style: TextStyle(color: AppAssets.greyColor,),textAlign:TextAlign.center,)),
                    );
                  }).toList(),
                ),
              ),
            ),

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

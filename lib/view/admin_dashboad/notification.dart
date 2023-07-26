import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../assets/appassets.dart';
import '../../widget/primary_buton.dart';
import '../../widget/text_feild_without_icon.dart';
import 'package:image_picker/image_picker.dart';
class StudentNotification extends StatefulWidget {
  const StudentNotification({Key? key}) : super(key: key);

  @override
  State<StudentNotification> createState() => _StudentNotificationState();
}

class _StudentNotificationState extends State<StudentNotification> {
  TextEditingController NotificationController=TextEditingController();
  TextEditingController MessageController=TextEditingController();

  File? image;
  Future pickImage() async{
    final image=await ImagePicker().pickImage(source: ImageSource.gallery);
    if(image==null) return;
    final imageTemporary=File(image.path);
    setState(() =>this.image=imageTemporary);
  }

  Widget imageProfile(){
    return GestureDetector(
      onTap:  (){
        pickImage();
      },
      child: Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        height: 150,
        width:double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppAssets.lightGrayWhite,
          borderRadius: BorderRadius.circular(8)
        ),
        child: image!=null? Image.file(image!, fit: BoxFit.cover,):Center(child: Image.asset(AppAssets.uploadImage,width: 80,height: 80, fit: BoxFit.contain,)),
      ),
    );
  }

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
                child: Text("Send Notification",style: TextStyle(color: AppAssets.whiteClr,fontSize: 20),)),
            SizedBox(height: 20,),
            imageProfile(),
            SizedBox(height: 20,),
            TextFiledWithoutIcon(controller: NotificationController, hint: 'Title', keyboardType:TextInputType.text, onChange: (String ) {  },),
            SizedBox(height: 20,),
            Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          width: MediaQuery.of(context).size.width,
          height: 150,
          padding: const EdgeInsets.only(left: 15,right: 15),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppAssets.lightGrayWhite,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppAssets.textLightColor, width: 0.1),
          ),
          child: TextFormField(
            cursorColor: AppAssets.textDarkColor,
            style: TextStyle(color: Colors.white),
            controller: MessageController,
            textAlign: TextAlign.start,
            maxLines: 1,

            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Message",
              labelStyle: TextStyle(color: Colors.white),
              hintStyle: AppAssets.latoRegular_textLightColor_14,
              border: InputBorder.none,

            ),
            onTap: (){},
          ),
        ),
            SizedBox(height: 20,),
            PrimaryButton(
                height: MediaQuery.of(context).size.height*0.08, 
              width: double.infinity, 
              buttonText: 'Send', 
              buttonRadius: BorderRadius.circular(8),
              buttonMargin: EdgeInsets.only(left: 20,right: 20),
              buttonTextStyle: TextStyle(
                  color: AppAssets.mybackgroundColor,
                  fontFamily: AppAssets.poppinsRegular), 
                  onPress: (){}, shadowColor:  AppAssets.shadowColor,
              
              
            
            )
          ],
        ),
      ),
    );
  }
}

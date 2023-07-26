import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ifsn/view/auth/sign_in.dart';
import 'package:image_picker/image_picker.dart';

import '../../assets/appassets.dart';
import '../../widget/primary_buton.dart';

import '../../widget/text_feild_without_icon.dart';
class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String? selectedSection;

  TextEditingController emailController=TextEditingController();

  TextEditingController nameController=TextEditingController();

  TextEditingController cityController=TextEditingController();

  TextEditingController serviceController=TextEditingController();

  TextEditingController passwrodController=TextEditingController();
  TextEditingController rollNumberController=TextEditingController();

  File? image;

  Future pickImage() async{
    final image=await ImagePicker().pickImage(source: ImageSource.gallery);
    if(image==null) return;
    final imageTemporary=File(image.path);
    setState(()=>this.image=imageTemporary);
  }
  Widget imageProfile(){
    return GestureDetector(
      onTap: (){
        pickImage();
      },
      child: Container(
        child: Stack(children: [
          Container(
            margin: EdgeInsets.only(top: 21),
            height: 132,
            width: 132,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFFFFFF),
              boxShadow:[
                BoxShadow(
                    color: AppAssets.myPrimaryColor.withOpacity(0.2),
                    spreadRadius:1,
                    blurRadius:6,
                    offset:Offset(0,3)
                ),
              ],
            ),
            child: ClipOval(
              child: image!=null ? Image.file(image!,fit: BoxFit.cover,):Padding(
                padding:  EdgeInsets.all(30.0),
                child: Image.asset(AppAssets.uploadImage,height: 5,width: 5,),
              ),
            ),
          ),

        ],),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppAssets.mybackgroundColor,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 25,left: 10),

                    width: 30,
                    height: 30,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Image.asset(AppAssets.backIcon,color: AppAssets.whiteClr,)),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    imageProfile(),
                    SizedBox(height: 20,),
                    Container(
                        child: Text("Upload Profile\nPicture.",style: TextStyle(color: AppAssets.whiteClr,fontFamily: AppAssets.poppinsRegular,fontSize: 14),)),

                  ],
                ),
                SizedBox(height: 50,),
                TextFiledWithoutIcon(hint: 'Enter Name', controller: nameController, keyboardType: TextInputType.text, onChange: (String ) { },),
                SizedBox(height: 20,),
                TextFiledWithoutIcon(hint: 'Enter Email', controller: emailController, keyboardType: TextInputType.emailAddress, onChange: (String ) { },),
                SizedBox(height: 20,),
                TextFiledWithoutIcon(hint: 'Enter City', controller: cityController, keyboardType: TextInputType.text, onChange: (String ) { },),
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
                TextFiledWithoutIcon(controller: rollNumberController, hint: 'Session', keyboardType:TextInputType.text, onChange: (String ) {  },),
                SizedBox(height: 20,),
                TextFiledWithoutIcon(hint: 'Enter Roll Number', controller: serviceController, keyboardType: TextInputType.text, onChange: (String ) { },),
                SizedBox(height: 20,),
                TextFiledWithoutIcon(hint: 'Enter Gender', controller: passwrodController, keyboardType: TextInputType.number, onChange: (String ) { },),
                SizedBox(height: 20,),
                TextFiledWithoutIcon(hint: 'Enter Password', controller: passwrodController, keyboardType: TextInputType.number, onChange: (String ) { },),
                SizedBox(height: 30,),
                Stack(
                  children: [
                    PrimaryButton(
                        height: MediaQuery.of(context).size.height*0.08,
                        width: double.infinity,
                        buttonText: "Sign Up",
                        // loading: authViewMode.loading,
                        buttonColor: AppAssets.whiteClr,
                        buttonRadius: BorderRadius.circular(15),
                        buttonMargin: EdgeInsets.only(left: 20,right: 20),
                        buttonTextStyle:  TextStyle(color: AppAssets.mybackgroundColor,fontFamily: AppAssets.poppinsRegular),
                        onPress: (){
                          // if(emailController.text.isEmpty){
                          //   Utils.flushBarErrorMessage("Please Enter Your Email", context);
                          // }else if(passwordController.text.isEmpty){
                          //   Utils.flushBarErrorMessage("Please Enter Your Password", context);
                          // }else if(passwordController.text.length<6){
                          //   Utils.flushBarErrorMessage("Please Enter 6 Digit Password", context);
                          // }else{
                          //   Map data={
                          //     'userEmail':emailController.text.toString(),
                          //     'userPassword':passwordController.text.toString(),
                          //   };
                          //   authViewMode.loginApi(data,context);
                          //   print("api hit");
                          // }
                          // // Navigator.push(context, MaterialPageRoute(builder: (context)=>const AdminDashBoard()));
                        }, shadowColor: AppAssets.shadowColor
                    ),
                  ],
                ),

                SizedBox(height: 50,),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text("Go Back To?",style: TextStyle(color: AppAssets.whiteClr),),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_Screen(),));
                          },
                          child: Text("  Login",style: TextStyle(color: AppAssets.whiteClr,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}

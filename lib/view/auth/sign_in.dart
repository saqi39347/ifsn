import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:ifsn/view/admin_dashboad/admin_dashboard.dart';
import 'package:ifsn/view/auth/register.dart';


import '../../assets/appassets.dart';
import '../../utils/utils.dart';
import '../../widget/primary_buton.dart';
import '../../widget/text_feild_without_icon.dart';
import '../../widget/text_with_icon.dart';
import '../admin_dashboad/bottom_navigation_bar.dart';
class Sign_Screen extends StatelessWidget {
  Sign_Screen({Key? key}) : super(key: key);

  ValueNotifier<bool> _obsecurePassword=ValueNotifier<bool>(true);

  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

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
                SizedBox(height: 130,),
                Text("Hello Agian!",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: AppAssets.ArconRoundedRegular,color: AppAssets.whiteClr ),),
                SizedBox(height: 20,),
                Text("Wellcome back you've  been missed!!",style: TextStyle(color: AppAssets.whiteClr ),),
                SizedBox(height: 50,),
                TextFiledWithoutIcon(hint: 'Enter Email', controller: emailController, keyboardType: TextInputType.emailAddress, onChange: (String ) { },),
                SizedBox(height: 15,),
                ValueListenableBuilder(valueListenable: _obsecurePassword,
                    builder: (context,value,child){
                      return Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height*0.07,
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppAssets.lightGrayWhite,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: AppAssets.textLightColor, width: 0.1),

                        ),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          obscureText: _obsecurePassword.value,
                          cursorColor: AppAssets.textDarkColor,
                          controller: passwordController,
                          textAlign: TextAlign.start,

                          onFieldSubmitted: (value){

                          },
                          maxLines: 1,

                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Password',

                            suffixIcon:InkWell(
                                onTap: (){
                                  _obsecurePassword.value=!_obsecurePassword.value;
                                },

                                child: Icon(
                                    _obsecurePassword.value? Icons.visibility_off_outlined:Icons.visibility)),
                            hintStyle: AppAssets.latoRegular_textLightColor_14,
                            border: InputBorder.none,

                          ),

                        ),
                      );}),
                GestureDetector(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotScreen()));
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 20,top: 20),
                      alignment: Alignment.topRight,
                      child: Text("Recovery Password",style: TextStyle(color: AppAssets.whiteClr,fontFamily: AppAssets.poppinsRegular,fontSize: 14),)),
                ),
                SizedBox(height: 30,),
                Stack(
                  children: [
                    PrimaryButton(
                        height: MediaQuery.of(context).size.height*0.08,
                        width: double.infinity,
                        buttonText: "Sign In",
                        // loading: authViewMode.loading,
                        buttonColor: AppAssets.orangeColor,
                        buttonRadius: BorderRadius.circular(15),
                        buttonMargin: EdgeInsets.only(left: 20,right: 20),
                        buttonTextStyle:  TextStyle(color: AppAssets.mybackgroundColor,fontFamily: AppAssets.poppinsRegular),
                        onPress: (){
                           if(emailController.text.isEmpty){
                            Utils.flushBarErrorMessage("Please Enter Your Email", context);
                           }else if(passwordController.text.isEmpty){
                             Utils.flushBarErrorMessage("Please Enter Your Password", context);
                           }else if(passwordController.text.length<6){
                             Utils.flushBarErrorMessage("Please Enter 6 Digit Password", context);
                           }else{
                             Map data={
                               'userEmail':emailController.text.toString(),
                               'userPassword':passwordController.text.toString(),
                             };
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> MyBottomNavigationBar()));
                           }

                        }, shadowColor: AppAssets.shadowColor
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 0.3,
                      width: 60,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0.1, 0.8],
                          colors: [Colors.transparent, Colors.white],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    const Text("or continue with",style: TextStyle(color: AppAssets.whiteClr),),
                    const SizedBox(width: 15,),
                    Container(
                      height: 0.3,
                      width: 60,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          stops: [0.1, 0.8],
                          colors: [Colors.transparent, Colors.white],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 80,
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: Colors.white,
                              width: 2
                          )
                      ),
                      child: Center(child: Image.asset(AppAssets.googleIcon,height: 40,)),

                    ),
                    SizedBox(width: 15,),
                    GestureDetector(
                      onTap: (){
                      },
                      child: Container(
                        height: 70,
                        width: 80,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Colors.white,
                                width: 2
                            )
                        ),
                        child: Center(child: Image.asset(AppAssets.facebookIcon,height: 40,)),

                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text("Not A Member?", style: TextStyle(color: AppAssets.whiteClr),),
                      GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
                          },
                          child: Text("  Register now",style: TextStyle(color: Colors.blue),)),
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

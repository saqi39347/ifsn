import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ifsn/view/auth/register.dart';
import 'package:ifsn/view/auth/sign_in.dart';

import '../../assets/appassets.dart';
class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: AppAssets.mybackgroundColor,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: MediaQuery.of(context).size.width*0.95,
                height: MediaQuery.of(context).size.height*0.50,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,

                ),
                child: Image.asset(AppAssets.jobSeeker,fit: BoxFit.fitHeight,),

              ),
              SizedBox(height: 30,),
              Text("Be the first to know! ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: AppAssets.whiteClr),),
              SizedBox(height: 30,),
              Text("Sign in to receive important notifications and updates.",style: TextStyle(fontWeight: FontWeight.normal,color: AppAssets.whiteClr),),
              SizedBox(height: 45,),
              Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Colors.white,
                        width: 2
                    )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
                            color: AppAssets.whiteClr,
                          ),
                          child: Center(child: Text("Register")),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
                        },
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        child: Container(
                          height: double.infinity,
                          child: Center(child: Text("Sign In",style: TextStyle(color: AppAssets.whiteClr),)),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Sign_Screen(),));
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

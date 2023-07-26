import 'package:flutter/material.dart';

import '../../assets/appassets.dart';
import '../students/students.dart';
import 'groups/group_list.dart';
import 'notification.dart';
class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppAssets.mybackgroundColor,
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(AppAssets.profileImage,fit: BoxFit.cover,),
                    ),

                    SizedBox(width: 16.0), // Add some space between the icons
                    IconButton(
                      onPressed: () {
                        // Perform logout action
                      },
                      icon: Icon(Icons.logout,color: AppAssets.whiteClr,),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                    margin: EdgeInsets.only(left:15),
                    child: Text("Hello",style: TextStyle(color: AppAssets.whiteClr),)),
                SizedBox(height: 5,),
                Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text("Saqlain",style: TextStyle(color: AppAssets.whiteClr,fontWeight: FontWeight.bold,fontSize: 30),)),
                SizedBox(height: 25,),
                Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text("Notifications",style: TextStyle(color: AppAssets.whiteClr,fontWeight: FontWeight.bold),)),
                SizedBox(height: 25,),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 250,
                          width: 170,
                          decoration: BoxDecoration(
                              color: AppAssets.lightGrayWhite,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GropList()));
                                },
                                child: Container(
                                    height: 90,
                                    width: 90,
                                    child: Image.asset(AppAssets.groupImage)),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                  child: Text("Groups",style: TextStyle(color: AppAssets.whiteClr),)),
                              Text("122 Groups",style: TextStyle(color: AppAssets.whiteClr)),
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          height: 190,
                          width: 170,
                          decoration: BoxDecoration(
                              color: AppAssets.lightGrayWhite,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentNotification()));
                                },
                                child: Container(
                                    height: 90,
                                    width: 90,
                                    child: Image.asset(AppAssets.notificationImage)),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                  child: Text("Notifications",style: TextStyle(color: AppAssets.whiteClr),)),
                              Text("12",style: TextStyle(color: AppAssets.whiteClr)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      children: [

                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 190,
                          width: 170,
                          decoration: BoxDecoration(
                              color: AppAssets.lightGrayWhite,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Container(
                                  height: 90,
                                  width: 90,
                                  child: Image.asset(AppAssets.classImage)),
                              SizedBox(height: 10,),
                              Container(
                                  child: Text("Classes",style: TextStyle(color: AppAssets.whiteClr),)),
                              Text("12",style: TextStyle(color: AppAssets.whiteClr)),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentList()));
                          },
                          child: Container(
                            height: 250,
                            width: 170,
                            decoration: BoxDecoration(
                                color: AppAssets.lightGrayWhite,
                                borderRadius: BorderRadius.circular(30)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                Container(
                                    height: 90,
                                    width: 90,
                                    child: Image.asset(AppAssets.studentsIconImage)),
                                SizedBox(height: 10,),
                                Container(
                                    child: Text("Students",style: TextStyle(color: AppAssets.whiteClr),)),
                                Text("12",style: TextStyle(color: AppAssets.whiteClr)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}

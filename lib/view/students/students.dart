import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../assets/appassets.dart';
import 'addstudent.dart';
class StudentList extends StatelessWidget {
   StudentList({Key? key}) : super(key: key);
  List<Color> itemColors = [Color(0xFFffa6a8), Color(0xFFfa8343), Color(0xFF0fbdf5), Color(0xFFfbdb7a), ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppAssets.mybackgroundColor,
         child:SingleChildScrollView(
           child: Container(
             padding: const EdgeInsets.only(left: 21,right: 21),
             child: Column(
               children: [
                 SizedBox(height: 30,),
                 GestureDetector(
                     onTap: (){
                       Navigator.of(context).pop();
                     }, child: Container(
                     alignment: Alignment.topLeft,
                     child: Icon(Icons.arrow_back_ios,color: AppAssets.whiteClr,))),
                 SizedBox(height: 30,),
                 Row(
                   children: [
                     Expanded(child: Text("Student List",style: TextStyle(color: AppAssets.whiteClr,fontFamily: AppAssets.poppinsBold,fontSize: 16),)),
                     Expanded(
                       child: GestureDetector(
                         onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddStudent()));
                         },
                         child: Container(
                           height: 43,
                           width: MediaQuery.of(context).size.width*0.22,
                           decoration: BoxDecoration(
                               color: AppAssets.whiteClr,
                               borderRadius: BorderRadius.circular(8)
                           ),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Container(
                                   child: Icon(Icons.add)),
                               Text("Add New",style: TextStyle(color: AppAssets.lightGrayWhite,fontSize: 16,fontFamily:AppAssets.poppinsBold),),
                             ],
                           ),
                         ),
                       ),
                     )
                   ],
                 ),
                 SizedBox(height: 25,),
                 Container(
                   width: MediaQuery.of(context).size.width*0.9,
                   height: MediaQuery.of(context).size.height,
                   child: ListView.builder( itemCount: 6,shrinkWrap: true,
                       itemBuilder: (BuildContext context,int index){
                         return  GestureDetector(
                           onTap: (){
                             // Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectedDocDetail()));
                           },
                           child: Container(
                             margin: EdgeInsets.only(bottom: 15,),
                             height: 89,
                             decoration: BoxDecoration(
                                 color: AppAssets.lightGrayWhite,
                                 borderRadius: BorderRadius.circular(20)
                             ),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Container(
                                   margin: EdgeInsets.only(left: 10),
                                   padding: EdgeInsets.all(12),
                                   height: 70,
                                   width: 70,
                                   decoration:  BoxDecoration(
                                     color: itemColors[index % itemColors.length],
                                     shape: BoxShape.circle,
                                   ),
                                   child: Image.asset(AppAssets.studentIcon,fit: BoxFit.contain),
                                 ),
                                 Expanded(
                                   child: Container(
                                     padding: EdgeInsets.only(left: 13,top: 17),
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text("Ahmed",style: TextStyle(color: AppAssets.whiteClr,fontFamily: AppAssets.poppinsBold,fontSize: 14),),
                                         SizedBox(height: 5,),
                                         Text("BSCS-F16-LC-167",style: TextStyle(color: AppAssets.textLightColor,fontFamily: AppAssets.poppinsRegular,fontSize: 12),textAlign: TextAlign.start,),
                                       ],

                                     ),
                                   ),
                                 ),

                                 // Spacer(),
                                 // PopupMenuButton(
                                 //     icon: Icon(Icons.more_vert,color: AppAssets.whiteColor,),
                                 //     onSelected: (value) {
                                 //       if(value == "edit"){
                                 //         Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit_Doctor(doctorModel:provider.doctorList[index])));
                                 //       }else if(value == "del"){
                                 //         provider.deleteDoctorCategoryApi(userModel.user.accessToken, provider.doctorCategoryList[index].doctorCategoryId.toString(), context).then((value) {
                                 //           if(value.status){
                                 //             setState(() {
                                 //               Utils.flushBarSuccessMessage(value.message, context);
                                 //             });
                                 //           }else{
                                 //             Utils.flushBarErrorMessage(value.message, context);
                                 //           }
                                 //         });
                                 //       }
                                 //     } ,itemBuilder: (BuildContext context){
                                 //   return [
                                 //     PopupMenuItem(value: "edit",child: Text("Edit")),
                                 //     PopupMenuItem(value: "del",child: Text("Delete")),
                                 //   ];
                                 //
                                 // }
                                 // )
                               ],
                             ),
                           ),
                         );
                       }),

                 )
               ],
             ),
           ),
         ),
      ),
    );
  }
}

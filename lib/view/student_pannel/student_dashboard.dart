import 'package:flutter/material.dart';

import '../../assets/appassets.dart';
class StudentDashboard extends StatefulWidget {
  const StudentDashboard({Key? key}) : super(key: key);

  @override
  State<StudentDashboard> createState() => _StudentDashboardState();
}

class _StudentDashboardState extends State<StudentDashboard> with TickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("IFNS Student")),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: "Read Notification",
            ),
            Tab(
              text: "Unread Notification",
            )
          ],
        ),
        backgroundColor: AppAssets.mybackgroundColor,
      ),
      body: Container(
        color: AppAssets.mybackgroundColor,
        child: TabBarView(
          controller: _tabController,
          physics: BouncingScrollPhysics(),
          children:  [
            ListView.builder( itemCount: 15,
                itemBuilder: (BuildContext context, int index){
                  if (index == 0) {
                    // Add spacing before the first container
                    return SizedBox(height: 26);
                  }
                  return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,

                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                      color: AppAssets.lightGrayWhite,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 10,top: 10),
                    child: Row(
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                              margin: EdgeInsets.only(left: 5),
                                  height: 30,
                                  width: 30,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(AppAssets.profileImage,fit: BoxFit.cover,),
                                ),
                              Container(
                                  child: Text("Ahmed",style: TextStyle(color: Colors.white),),
                                ),
                            ],
                          ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: Container(

                            child: Text("This is IOT assingment that will be submitted on monday which is most important to obtain sessiontional marks ",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    )

                  ),
                ),
              );
                }),

            // Center(
            //   child: Text("This is the Read tab"),
            // ),
            Center(
              child: Text("This is the Unread tab"),
            ),
          ],
        ),
      ),
    );
  }
}

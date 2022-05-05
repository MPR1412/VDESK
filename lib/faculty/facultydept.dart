import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'facultycse.dart';
import 'facultyit.dart';

class facultydept extends StatefulWidget {
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<facultydept> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length:2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("DEPARTMENTS"),
            bottom: menu(),
            backgroundColor: Colors.black,
          ),
          body: TabBarView(
            children: [
              facultyitdept(),
              facultycsedept(),
              //facultyecedept(),
             // facultyeeedept(),
             // facultymechdept(),
             // facultycivdept(),
              //facultychemdept(),
              //facultybmedept(),
              //facultyphedept(),
             // facultybshdept(),
              // emergencyContact(),

            ],
          ),
        ),
      ),
    );
  }

  Widget menu() {

    return TabBar(

      tabs:[

        Tab(
          child: Flexible(
              child: Text(
                "IT",
                textAlign: TextAlign.center,
              )),
          //icon: Icon(Icons.account_balance),

        ),


        Tab(
          child: Flexible(
              child: Text(
                "CSE",
                textAlign: TextAlign.center,
              )),
          //icon: Icon(Icons.people),
        ),


        /*Tab(
          child: Flexible(
              child: Text(
                "ECE",
                textAlign: TextAlign.center,
              )),
          // icon: Icon(Icons.local_hospital),
        ),
        Tab(
          child: Flexible(
              child: Text(
                "EEE",
                textAlign: TextAlign.center,
              )),
          // icon: Icon(Icons.people),
        ),
        Tab(
          child: Flexible(
              child: Text(
                "MECH",
                textAlign: TextAlign.center,
              )),
          //  icon: Icon(Icons.people),
        ),
        Tab(
          child: Flexible(
              child: Text(
                "CIV",
                textAlign: TextAlign.center,
              )),
          // icon: Icon(Icons.people),
        ),
        Tab(
          child: Flexible(
              child: Text(
                "CHE",
                textAlign: TextAlign.center,
              )),
          // icon: Icon(Icons.people),
        ),
        Tab(
          child: Flexible(
              child: Text(
                "BME",
                textAlign: TextAlign.center,
              )),
          //icon: Icon(Icons.people),
        ),
        Tab(
          child: Flexible(
              child: Text(
                "PHE",
                textAlign: TextAlign.center,
              )),
          //icon: Icon(Icons.people),
        ),
        Tab(
          child: Flexible(
              child: Text(
                "BS&H",
                textAlign: TextAlign.center,
              )),
          //  icon: Icon(Icons.people),
        ),*/
      ],
    );
  }

}
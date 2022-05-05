import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'AboutCampus/visionMission.dart';
import 'AboutCampus/BVRIT.dart';
import 'AboutCampus/MANAGEMENT.dart';
import 'AboutCampus/Deans.dart';

class About extends StatefulWidget {
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<About> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 2, vsync: this);
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
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black26,
          appBar: AppBar(
            title: Text("About"),
            bottom: menu(),
            backgroundColor: Colors.black,
          ),
          body: TabBarView(
            children: [BVRIT(), MANAGEMENT(), Deans()],
          ),
        ),
      ),
    );
  }

  Widget menu() {
    return TabBar(
      tabs: [
        Tab(
          child: Flexible(
              child: Text(
                "BVRIT",
                textAlign: TextAlign.center,
              )),
          icon: Icon(Icons.account_balance),
        ),
        Tab(
          child: Flexible(
              child: Text(
                "Management",
                textAlign: TextAlign.center,
              )),
          icon: Icon(Icons.assignment),
        ),
        Tab(
          child: Flexible(
              child: Text(
                "Deans",
                textAlign: TextAlign.center,
              )),
          icon: Icon(Icons.people),
        ),

      ],
    );
  }
}
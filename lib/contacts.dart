import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vdesk/clickoncontact/administrationContact.dart';

import 'package:vdesk/clickoncontact/hodContact.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class contacts extends StatefulWidget {
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<contacts> with SingleTickerProviderStateMixin {
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
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contacts"),
            bottom: menu(),
            backgroundColor: Colors.black,
          ),
          body: TabBarView(
            children: [
              administrationContact(),
              hodContact(),
             // emergencyContact(),

            ],
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
                "ADMIN",
                textAlign: TextAlign.center,
              )),
          icon: Icon(Icons.account_balance),
        ),
        Tab(
          child: Flexible(
              child: Text(
                "HOD",
                textAlign: TextAlign.center,
              )),
          icon: Icon(Icons.people),
        ),
       /* Tab(
          child: Flexible(
              child: Text(
                "Emergency",
                textAlign: TextAlign.center,
              )),*/
        //  icon: Icon(Icons.local_hospital),
       // ),
      ],
    );
  }
}
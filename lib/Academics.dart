import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:marquee/marquee.dart';
import 'package:vdesk/Academics.dart';
import 'package:vdesk/Exam/exampage.dart';
import 'package:vdesk/notice.dart';
import 'package:vdesk/provider/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'About.dart';
import 'contacts.dart';
import 'holidays.dart';
import 'itcontacts.dart';
//import '../About.dart';
//import '../contacts.dart';
//import '../holidays.dart';
//import '../itcontacts.dart';
//import '../notice.dart';
class Academics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.white,
        body:SafeArea(
          child: ListView(

            //crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       /* children: [
                          Icon(Icons.school_rounded, color: Colors.black, size: 50.0),

                          // actions: <Widget>[
                          FlatButton.icon(
                            onPressed: () async {
                              //await _auth.signOut();
                              final provider =
                              Provider.of<GoogleSignInProvider>(context, listen: false);
                              provider.logout();
                            },
                            icon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            label: Text(
                              'Logout',
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                          // ],
                          //Image.asset('assets/vishnulogo.jpeg'),
                        ]*/
                    )
                ),


                Padding(

                    padding: const EdgeInsets.all(18.0),
                    child: Text("DEPARTMENT",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold

                      ),
                      textAlign: TextAlign.start,
                    )
                ),

                Padding(padding: const EdgeInsets.all(12.0),

                    child: Center(
                      child: Wrap(
                        spacing: 20.0,
                        runSpacing: 20.0,

                        children: [

                          SizedBox(
                              width: 160.0,
                              height: 160.0,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => About()));
                                  },

                                  child: Card(
                                    color: Color.fromARGB(255, 21, 21, 21),
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child :Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.network('https://techpointindia.net/website_files/cse1.png'),
                                              SizedBox(height: 25.0),
                                              Text("CSE", style: TextStyle(
                                                color: Colors.red,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.0,

                                              )),
                                              SizedBox(height: 15.0),
                                              Text("", style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100

                                              ),)
                                            ],
                                          ),

                                        ),
                                      ),
                                    ),
                                  )
                              )
                          ),

                          SizedBox(
                              width: 160.0,
                              height: 160.0,

                              child: GestureDetector(
                                  onTap: () {
                                    // To do
                                   /* Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Academics()));*/
                                  },
                                  child: Card(
                                    color: Color.fromARGB(255, 21, 21, 21),
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:SingleChildScrollView
                                          (
                                          child: Column(
                                            children: [
                                              Image.network('https://media-exp1.licdn.com/dms/image/C4E0BAQGZgXBk3xEzsA/company-logo_200_200/0/1519877311348?e=2159024400&v=beta&t=_jYtciRLSpeksTl7v9YO8dhHz44Nabs2TovTSYecdnU'),
                                              SizedBox(height: 10.0),
                                              Text("IT", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,

                                              )),
                                              SizedBox(height: 5.0),
                                              Text("", style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100

                                              ),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              )
                          ),

                          SizedBox(
                              width: 160.0,
                              height: 160.0,
                              child: GestureDetector(
                                  onTap: () {
                                    // To do
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => contacts()));
                                  },
                                  child: Card(
                                    color: Color.fromARGB(255, 21, 21, 21),
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.network('http://vecw.edu.in/wp-content/uploads/2019/03/G0U4NNTm_400x400.jpg'),
                                              SizedBox(height: 10.0),
                                              Text("ECE", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,

                                              )),
                                              SizedBox(height: 5.0),
                                              Text("Contacts", style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100

                                              ),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              )
                          ),

                          SizedBox(
                              width: 160.0,
                              height: 160.0,
                              child: GestureDetector(
                                  onTap: () {
                                    // To do
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => exampage()));
                                  },
                                  child: Card(
                                    color: Color.fromARGB(255, 21, 21, 21),
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.network('https://logodix.com/logo/1809036.jpg'),
                                              SizedBox(height: 10.0),
                                              Text("EEE", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,

                                              )),
                                              SizedBox(height: 5.0),
                                              Text("Branch", style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100

                                              ),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              )
                          ),
                          SizedBox(
                              width: 160.0,
                              height: 160.0,
                              child: GestureDetector(
                                  onTap: () {
                                    // To do
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => notice()));
                                  },
                                  child: Card(
                                    color: Color.fromARGB(255, 21, 21, 21),
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.network('https://blog.placeit.net/wp-content/uploads/2019/04/Civil_Engineering_logo_Linear.png'),
                                              SizedBox(height: 10.0),
                                              Text("CIVIL", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,

                                              )),
                                              SizedBox(height: 5.0),
                                              Text("DEPT", style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100

                                              ),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              )
                          ),

                          SizedBox(
                              width: 160.0,
                              height: 160.0,
                              child: GestureDetector(
                                  onTap: () {
                                    // To do
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => itcontacts()));
                                  },
                                  child: Card(
                                    color: Color.fromARGB(255, 21, 21, 21),
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.asset('assets/images/clubs.png'),
                                              SizedBox(height: 10.0),
                                              Text("Clubs", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,

                                              )),
                                              SizedBox(height: 5.0),
                                              Text("", style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100

                                              ),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              )
                          ),

                          SizedBox(
                              width: 160.0,
                              height: 160.0,
                              child: GestureDetector(
                                  onTap: () {
                                    // To do
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => holidays()));
                                  },
                                  child: Card(
                                    color: Color.fromARGB(255, 21, 21, 21),
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.asset('assets/images/holiday1.jpg'),
                                              SizedBox(height: 10.0),
                                              Text("Holidays", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,

                                              )),
                                              SizedBox(height: 5.0),
                                              Text("List", style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100

                                              ),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                              )
                          ),
                          SizedBox(
                              width: 160.0,
                              height: 160.0,
                              child: GestureDetector(
                                  onTap: () {
                                    // To do
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => itcontacts()));
                                  },
                                  child: Card(
                                    color: Color.fromARGB(255, 21, 21, 21),
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.asset('assets/vishnulogo.jpeg'),
                                              SizedBox(height: 10.0),
                                              Text("IT", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,

                                              )),
                                              SizedBox(height: 5.0),
                                              Text("dept", style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w100

                                              ),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )

                              )
                          )

                        ],
                      ),
                    )
                ),





              ]
          ),
        )




    );
  }

}

/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vdesk/clickoncontact/administrationContact.dart';

import 'package:vdesk/clickoncontact/hodContact.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'Departments/bmedept.dart';
import 'Departments/bs&hdept.dart';
import 'Departments/chem.dart';
import 'Departments/civdept.dart';
import 'Departments/csedept.dart';
import 'Departments/ecedept.dart';
import 'Departments/eeedept.dart';
import 'Departments/itdept.dart';
import 'Departments/mechdept.dart';
import 'Departments/phedept.dart';
import 'alldepartments.dart';

class Academics extends StatefulWidget {
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<Academics> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length:10, vsync: this);
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
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text("DEPARTMENTS"),
            bottom: menu(),
            backgroundColor: Colors.black,
          ),
          body: TabBarView(
            children: [
              itdept(),
              //csedept(),
             // ecedept(),
             // eeedept(),
             // mechdept(),
              //civdept(),
              //chemdept(),
             // bmedept(),
             // phedept(),
              //bshdept(),
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


       /* Tab(
          child: Flexible(
              child: Text(
                "CSE",
                textAlign: TextAlign.center,
              )),
          //icon: Icon(Icons.people),
        ),


         Tab(
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

}*/

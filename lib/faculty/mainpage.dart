import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vdesk/faculty/authentication.dart';
import 'package:vdesk/faculty/user_model.dart';
import 'package:provider/provider.dart';

import 'facultydept.dart';


class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final userRef = FirebaseFirestore.instance.collection("users");
  UserModel _currentUser;

  String _uid;
  String _username;
  String _email;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  getCurrentUser() async {
    UserModel currentUser = await context
        .read<AuthenticationService>()
        .getUserFromDB(uid: auth.currentUser.uid);

    _currentUser = currentUser;

    print("${_currentUser.username}");

    setState(() {
      _uid = _currentUser.uid;
      _username = _currentUser.username;
      _email = _currentUser.email;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(

            //crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.school_rounded, color: Colors.black,
                              size: 50.0),

                          // actions: <Widget>[
                          RaisedButton.icon(
                            icon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            label: Text(
                              'Logout',
                              style: TextStyle(color: Colors.black),
                            ),

                            elevation: 8.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10))),
                            color: Colors.orange,
                            onPressed: () =>
                                context.read<AuthenticationService>().signOut(),
                          ),
                        ]
                    )
                ),


                Padding(

                    padding: const EdgeInsets.all(18.0),
                    child: Text("WELCOME",
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
                                            builder: (context) => facultydept()));
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
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'assets/mybvrit1.jpg'),
                                              SizedBox(height: 25.0),
                                              Text(
                                                  "DEPARMENT", style: TextStyle(
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
                                            builder: (context) => exampage()));*/
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
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'assets/images/exam1.jpg'),
                                              SizedBox(height: 10.0),
                                              Text("EXAMINATION",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.0,

                                                  )),
                                              SizedBox(height: 5.0),
                                              Text("BRANCH", style: TextStyle(
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
                                    /*  Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => notice()));*/
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
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'assets/images/notice1.jpg'),
                                              SizedBox(height: 10.0),
                                              Text("CENTRAL", style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0,

                                              )),
                                              SizedBox(height: 5.0),
                                              Text("NOTICE", style: TextStyle(
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
                                    /*   Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => holidays()));*/
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
                                        child: SingleChildScrollView(
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                  'assets/images/holiday1.jpg'),
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
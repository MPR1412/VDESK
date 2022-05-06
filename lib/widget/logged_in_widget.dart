import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:marquee/marquee.dart';
import 'package:vdesk/Academics.dart';
import 'package:vdesk/Exam/exampage.dart';
import 'package:vdesk/provider/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../About.dart';
import '../Departments/itdept.dart';
import '../clubs.dart';
import '../contacts.dart';
import '../holidays.dart';
import '../itcontacts.dart';
import '../notice.dart';
class LoggedInWidget extends StatelessWidget {
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
                    children: [
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
                                        Image.asset('assets/mybvrit1.jpg'),
                                        SizedBox(height: 25.0),
                                        Text("ABOUT", style: TextStyle(
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Academics()));
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
                                            Image.asset('assets/images/academic.png'),
                                            SizedBox(height: 10.0),
                                            Text("DEPARTMENTS", style: TextStyle(
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
                                            Image.asset('assets/images/contact.jpg'),
                                            SizedBox(height: 10.0),
                                            Text("ADMINISTRATION", style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,

                                            )),
                                            SizedBox(height: 5.0),
                                            Text("CONTACTS", style: TextStyle(
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
                                            Image.asset('assets/images/exam1.jpg'),
                                            SizedBox(height: 10.0),
                                            Text("EXAM", style: TextStyle(
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
                                            Image.asset('assets/images/notice1.jpg'),
                                            SizedBox(height: 10.0),
                                            Text("MAIN", style: TextStyle(
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
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => clubs()));
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
                                            Text("CLUBS", style: TextStyle(
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
                                            Text("HOLIDAYS", style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,

                                            )),
                                            SizedBox(height: 5.0),
                                            Text("LIST", style: TextStyle(
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
                     /*   SizedBox(
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
                        )*/

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

import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vdesk/fullscreen_image.dart';
import 'package:vdesk/loading.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../itcontacts.dart';
//import 'itcontacts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class civdept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text(
          'CIV DEPARTMENT', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.black,
        elevation: 10.0,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => aboutit()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.account_balance,
                        size: 50.0,
                      ),
                      Text("About",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TimeTable()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        size: 50.0,
                      ),
                      Text("Student's Time Table",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => itNotice()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.warning,
                        size: 50.0,
                      ),
                      Text("Notice",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TeachersTimeTable()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.warning,
                        size: 50.0,
                      ),
                      Text("Teacher's Time Table",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  launch(
                      "https://drive.google.com/folderview?id=1S4yCJBfg9LwTIz5JWcaqQxE4NC_HJnTN");
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.description,
                        size: 50.0,
                      ),
                      Text("Prev. Question Papers",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 10,
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => itcontacts()));
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.description,
                        size: 50.0,
                      ),
                      Text("Faculty Contacts",
                          textAlign: TextAlign.center,
                          style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Start of About Class
class aboutit extends StatelessWidget {
  const aboutit({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'INFORMATION TECHNOLOGY DEPARTMENT', /*style:TextStyle(color:Colors.black)*/
        ),
        backgroundColor: Colors.black,
        elevation: 10.0,
      ),
      body: PageView(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Image.asset("assets/images/itblock.jpg"),
              Center(
                child: Text(
                  "\nSwipe Left for Additional link",
                  textAlign: TextAlign.justify,
                  softWrap: true,
                  style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                ),
              ),
              Wrap(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      "Vision:\n To produce employable graduates, world class entrepreneurs with ethics and social responsibilities in Information Technology solutions and Information Technology Enabled Services (ITES).\n\nMission:\nM1:To offer high quality graduate and post graduate programs in Information Technology education and to prepare students for professional career and higher studies globally.\nM2: To promote excellence in research & consultancy in IT solution and ITES with use of state of the art technology.\nM3: To develop self learning abilities and professional ethics to serve the society.",
                      textAlign: TextAlign.justify,
                      softWrap: true,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Swipe Left for Additional link\n",
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        style:
                        TextStyle(color: Colors.blueAccent, fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            child: Container(
              child: ListView(
                children: <Widget>[
                  Card(
                    color: Colors.red,
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "",
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  // fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "Additional Links",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  // fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "",
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  // fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: _launchURLApp,
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "IT DEPARTMENT",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: _launchURLpub,
                      /* onTap: () {
                        launch(
                            'https://www.bvrit.ac.in/it-publications');
                      },*/
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "publications",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://www.bvrit.ac.in/it-awards');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Awards And Recognition",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://www.bvrit.ac.in/it-funding-projects');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Funding Projects",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://www.bvrit.ac.in/it-placements');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Department placements",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://drive.google.com/file/d/1lPnOQs8Jgph4g2VJ6zxdIhbUesRRFvXA/view');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Innovative Ideas",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://www.bvrit.ac.in/it-laboratories');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Laboratory Details",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://www.bvrit.ac.in/it-vedic-activities');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "IT VEDIC ACTIVITIES",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        launch(
                            'https://www.bvrit.ac.in/it-curriculum');
                      },
                      splashColor: Colors.lightBlueAccent,
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Curriculum",
                              style: new TextStyle(
                                  fontSize: 30.0,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueAccent),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
//End of About Class

//Start of class time table

class TimeTable extends StatefulWidget {
  _TimeTable createState() => new _TimeTable();
}

class _TimeTable extends State<TimeTable> {
  StreamSubscription<QuerySnapshot> subscription;
  List<QueryDocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
  FirebaseFirestore.instance.collection("timeTable");

  @override
  void initState() {
    super.initState();
    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        timeTable = datasnapshot.docs;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            "INFORMATION TECHNOLOGY DEPARTMENT", /*style:TextStyle(color:Colors.black)*/
          ),
          backgroundColor: Colors.black,
          elevation: 10.0,
        ),
        body: timeTable != null
            ? new StaggeredGridView.countBuilder(
          padding: const EdgeInsets.all(9.0),
          crossAxisCount: 1,
          itemCount: timeTable.length,
          itemBuilder: (context, i) {
            // Image.network(url);
            String imgPath= timeTable[i].get('url');
            // String imgPath = FirebaseFirestore.instance.collection("timeTable").get()['url'];

            return new Material(
                elevation: 10.0,
                borderRadius:
                new BorderRadius.all(new Radius.circular(50.0)),
                child: new InkWell(
                  onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>
                          new FullScreenImagePage(imgPath))),
                  child: Hero(
                    tag: imgPath,
                    child: new FadeInImage(
                      placeholder: new AssetImage("assets/vishnulogo.jpeg"),
                      image: new NetworkImage(imgPath),
                    ),
                  ),
                ));
          },
          staggeredTileBuilder: (i) => new StaggeredTile.count(1, 1),
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
        )
            : new Loading());
  }
}
//end of class TimeTable


//Start of class time table
class TeachersTimeTable extends StatefulWidget {
  _TeachersTimeTable createState() => new _TeachersTimeTable();
}

class _TeachersTimeTable extends State<TeachersTimeTable> {
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
  FirebaseFirestore.instance.collection("timeTable");

  @override
  void initState() {
    super.initState();
    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        timeTable = datasnapshot.docs;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            'INFORMATION TECHNOLOGY DEPARTMENT', /*style:TextStyle(color:Colors.black)*/
          ),
          backgroundColor: Colors.black,
          elevation: 10.0,
        ),
        body: timeTable != null
            ? new StaggeredGridView.countBuilder(
          padding: const EdgeInsets.all(9.0),
          crossAxisCount: 1,
          itemCount: timeTable.length,
          itemBuilder: (context, i) {
            String imgPath = timeTable[i].get('url');
            return new Material(
                elevation: 10.0,
                borderRadius:
                new BorderRadius.all(new Radius.circular(50.0)),
                child: new InkWell(
                  onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>
                          new FullScreenImagePage(imgPath))),
                  child: Hero(
                    tag: imgPath,
                    child: new FadeInImage(
                      placeholder: new AssetImage("assets/vishnulogo.jpeg"),
                      image: new NetworkImage(imgPath),
                    ),
                  ),
                ));
          },
          staggeredTileBuilder: (i) => new StaggeredTile.count(1, 1),
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
        )
            : new Loading());
  }
}
//end of Teacher's TimeTable

//Start of Notice
class itNotice extends StatefulWidget {
  _itNotice createState() => new _itNotice();
}

class _itNotice extends State<itNotice> {
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
  FirebaseFirestore.instance.collection("timeTable");

  @override
  void initState() {
    super.initState();
    subscription = collectionReference.snapshots().listen((datasnapshot) {
      setState(() {
        timeTable = datasnapshot.docs;
      });
    });
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          title: Text(
            'PHARMACEUTICAL DEPARTMENT', /*style:TextStyle(color:Colors.black)*/
          ),
          backgroundColor: Colors.black,
          elevation: 10.0,
        ),
        body: timeTable != null
            ? new StaggeredGridView.countBuilder(
          padding: const EdgeInsets.all(9.0),
          crossAxisCount: 1,
          itemCount: timeTable.length,
          itemBuilder: (context, i) {
            String imgPath = timeTable[i].get('url');
            return new Material(
                elevation: 10.0,
                borderRadius:
                new BorderRadius.all(new Radius.circular(50.0)),
                child: new InkWell(
                  onTap: () => Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) =>
                          new FullScreenImagePage(imgPath))),
                  child: Hero(
                    tag: imgPath,
                    child: new FadeInImage(
                      placeholder: new AssetImage("assets/vishnulogo.jpeg"),
                      image: new NetworkImage(imgPath),
                    ),
                  ),
                ));
          },
          staggeredTileBuilder: (i) => new StaggeredTile.count(1, 1),
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
        )
            : new Loading());
  }
}
_launchURLApp() async {
  const url = 'https://www.bvrit.ac.in/it-overview';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLpub() async {
  const url = 'https://www.bvrit.ac.in/it-overview';
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: true, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}
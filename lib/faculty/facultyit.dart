import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:url_launcher/url_launcher.dart';

import '../fullscreen_image.dart';
import '../loading.dart';
import 'facultycse.dart';

class facultyitdept extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text(
          'INFORMATION TECHNOLOGY DEPARTMENT', /*style:TextStyle(color:Colors.black)*/
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
              launch(
               'https://www.myattendancetracker.com/login');
                },
                splashColor: Colors.lightBlueAccent,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.bookmarks_sharp,
                        size: 50.0,
                      ),
                      Text("ATTENDANCE",
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
                      MaterialPageRoute(builder: (context) => IseNotice()));
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
                        Icons.access_time,
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

          ],
        ),
      ),
    );
  }
}

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
class IseNotice extends StatefulWidget {
  _IseNotice createState() => new _IseNotice();
}

class _IseNotice extends State<IseNotice> {
  StreamSubscription<QuerySnapshot> subscription;
  List<DocumentSnapshot> timeTable;

  final CollectionReference collectionReference =
  FirebaseFirestore.instance.collection("ISENotice");

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
                      //image: new NetworkImage(imgPath),
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

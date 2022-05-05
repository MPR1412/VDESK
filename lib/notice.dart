
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'fullscreen_image.dart';
import 'loading.dart';

class notice extends StatefulWidget {
  _notice createState() => new _notice();
}

class _notice extends State<notice> {
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
            'CENTRAL NOTICE', /*style:TextStyle(color:Colors.black)*/
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
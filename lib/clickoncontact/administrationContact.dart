import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class administrationContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView(
        children: <Widget>[
          Text(
            "Administration's contact",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
                fontSize: 30,
                decoration: TextDecoration.underline),
          ),
          Text(
            "( Tap on number to call directly )",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 20,
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel: 08458-222000/222001");
              },
              //onTap: _makingPhoneCall,
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Campus",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:- 08458-222000 / 222001",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:7337411184");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Principal",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:7337411184",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
         /* Card(
            elevation: 10,
            margin: EdgeInsets.all(0.0),
            child: InkWell(
              onTap: () {
                launch("");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Text(
            "",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),*/
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9949433572");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Training and Placement Officer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9949433572",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
        /*  Card(
            elevation: 10,
            margin: EdgeInsets.all(0.0),
            child: InkWell(
              onTap: () {
                launch("mailto:principal@sdmcet.ac.in?");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "principal@sdmcet.ac.in",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Text(
            "",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),*/
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9949433569");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Exam Branch Incharge",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9949433569",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9949433570");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "DGM Admin",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9949433570",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9949433573");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Administrative Officer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9949433573",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9959222485");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Assistant Administrative Officer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9959222485",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9492914906");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Accounts Officer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9492914906",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9492911646");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Scholarship Section",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9492911646",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:7331132906");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Hostel Coordinator",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:7331132906",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            margin: EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                launch("tel:9121177698");
              },
              splashColor: Colors.lightBlueAccent,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Transport Coordinator",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "Phone no:9121177698",
                      style: new TextStyle(
                          fontSize: 20.0,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}/*
_makingPhoneCall() async {
  const url = 'tel:9876543210';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}*/
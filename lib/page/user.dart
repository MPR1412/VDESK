import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vdesk/faculty/facultypage.dart';
import 'package:vdesk/page/home_page.dart';


class user extends StatelessWidget {
 // Future getimgfromFirebase() async{
    //var firestore=FirebaseFirestore.instance;
   // QuerySnapshot qn=await firestore.collection("introimages").getDocuments();
   // return qn.docs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.black,
      appBar: AppBar(
        title: Text("VDESK"),
        backgroundColor: Colors.black,
      ),
        drawer: new Drawer(
          //backgroundColor:Colors.black,
            elevation: 100,
            child: Container(
              color: Colors.black12,
              child: ListView(
               // backgroundColor:Colors.black,
                padding: EdgeInsets.only(bottom: 200, top: 30),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    height: 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage('assets/vishnulogo.jpeg'),
                          fit: BoxFit.fitHeight,
                        )),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.public,
                      color: Colors.black,
                    ),
                    title: Text(" COLLEGE WEBSITE",),
                      onTap: () {
                        launch(
                            'https://www.bvrit.ac.in/');
                      },
                     // focusColor:Colors.black,


                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blue,
                    ),
                    title: Text("LINKEDIN"),
                    onTap: () {
                    launch(
                        'https://www.linkedin.com/school/bv-raju-institute-of-technology-bvrit-/');
                  },
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.red,
                    ),
                    title: Text("YOUTUBE CHANNEL"),
                     onTap: () {
                    launch(
                        'https://www.youtube.com/c/VishnuSociety');
                  },
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.purple,
                    ),
                    title: Text("OFFICIAL INSTAGRAM"),
                    /*onTap: () {
                    launch('https://www.instagram.com/officialinsignia/');
                  },*/
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.facebookSquare,
                      color: Colors.blue,
                    ),
                    title: Text("BVRIT"),
                     onTap: () {
                    launch(
                        'https://www.facebook.com/BVRIT');
                  },
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.facebookSquare,
                      color: Colors.blue,
                    ),
                    title: Text("BVRIT ALUMNI"),
                    /*onTap: () {
                    launch('https://www.facebook.com/sdmcetalumni/');
                  },*/
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.facebookSquare,
                      color: Colors.blue,
                    ),
                    title: Text("BVRIT MEDIA"),
                    /*onTap: () {
                    launch('https://www.facebook.com/SDMCETMEDIAOFFICIAL/');
                  },*/
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      color: Colors.red,
                    ),
                    title: Text("MAP"),
                    onTap: () {
                    launch('https://www.google.com/maps/search/bvrit+location/@17.6282472,78.2442212,12z/data=!3m1!4b1');
                  },
                  ),
                 /* ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.code,
                      color: Colors.black,
                    ),
                    title: Text("About Developer"),
                     onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutDeveloper()));
                  },
                  ),*/
                ],
              ),
            )),
      body: Column(
       children:[
         Expanded(
      child: ListView(
        children: [
          CarouselSlider(
            items: [
             // backgroundColor:Colors.blue
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                   // image: NetworkImage("https://images.shiksha.com/mediadata/images/1595846985phpW2q9ja.jpeg"),
                    image: NetworkImage("https://svespsychologybvrm.in/images/bvrajugarupic.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                   // image: NetworkImage("https://images.shiksha.com/mediadata/images/1595846985phpW2q9ja.jpeg"),
                    image: NetworkImage("https://images.shiksha.com/mediadata/images/1595846985phpW2q9ja.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_2EDyEuUEIIDf19SQYyaZjRQY1fphd8piaBCTpfdrt2tgQpdTjre7TROqeI67wX8icK8&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage("https://www.google.com/maps/uv?pb=!1s0x3bcc0af1ba39c677%3A0xc4ae2d2cf9b35b63!3m1!7e115!4shttps%3A%2F%2Flh5.googleusercontent.com%2Fp%2FAF1QipONbExWBKDlvA8Xj3CII9zQmjgxRbN7qEKLyZHK%3Dw300-h200-k-no!5sbvrit%20-%20Google%20Search!15sCgIgAQ&imagekey=!1e10!2sAF1QipONbExWBKDlvA8Xj3CII9zQmjgxRbN7qEKLyZHK&hl=en&sa=X&ved=2ahUKEwiU19u1jsr3AhWMT2wGHZ3pCwoQoip6BAhXEAM"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                     fit: BoxFit.cover,
                        image:NetworkImage("https://bvrit.ac.in/images/campustour/IndoorSportsCom.jpg"),

                    ),
                  ),
                ),


            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 300.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],

      ),

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
                           builder: (context) => facultypage()));
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
                             Image.asset('assets/images/faculty1.jpg'),
                             SizedBox(height: 10.0),
                             /*Text("FACULTY", style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 20.0,

                             )),
                             SizedBox(height: 5.0),
                             Text("LOGIN", style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.w100

                             ),)*/
                           ],
                         ),
                       ),
                     ),
                   ),
                 )
             )
         ),
        /* SizedBox(
             width: 160.0,
             height: 160.0,
             child: GestureDetector(
                 onTap: () {
                   // To do
                   Navigator.push(
                       context,
                       MaterialPageRoute(
                           builder: (context) => HomePage()));
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
                      //child: Expanded(
                         child: Column(
                           children: [
                             Image.asset('assets/images/parent1.png'),
                            SizedBox(height: 10.0),
                           /*  Text("Parent", style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 20.0,

                             )),*/
                            /* SizedBox(height: 5.0),
                             Text("Login", style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.w100

                             ),)*/
                           ],
                        // ),
                       ),
                      )
                     ),
                   ),
                 )
             )
         ),*/

         SizedBox(
             width: 160.0,
             height: 160.0,
             child: GestureDetector(
                 onTap: () {
                   // To do
                   Navigator.push(
                       context,
                       MaterialPageRoute(
                           builder: (context) => HomePage()));
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
                             Image.asset('assets/images/student1.jpg'),
                             SizedBox(height: 10.0),
                            /* Text("Student", style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold,
                               fontSize: 20.0,

                             )),
                             SizedBox(height: 5.0),
                             Text("login", style: TextStyle(
                                 color: Colors.white,
                                 //fontWeight: FontWeight.w100

                             ),
                            )*/
                           ],
                         ),
                       ),
                     ),
                   ),
                 )
             )
         ),
        /* RaisedButton(
           color: Colors.red, // background
           textColor: Colors.white, // foreground
           onPressed: () { },
           child: Text('TEACHER'),
         )*/
    ]
    )

    );

  }
}

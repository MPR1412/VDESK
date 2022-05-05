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
                    title: Text(" College's Official Website",),
                      onTap: () {
                        launch(
                            'https://www.linkedin.com/school/sdm-college-of-engg-&-tech-dharwad/about/');
                      },
                     // focusColor:Colors.black,


                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.blue,
                    ),
                    title: Text("Linkedin"),
                    /*onTap: () {
                    launch(
                        'https://www.linkedin.com/school/sdm-college-of-engg-&-tech-dharwad/about/');
                  },*/
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.red,
                    ),
                    title: Text("College's Youtube channel"),
                    /* onTap: () {
                    launch(
                        'https://www.youtube.com/channel/UCYuupsA7tts1Edy0kotGTUg');
                  },*/
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.purple,
                    ),
                    title: Text("officialinsignia"),
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
                    /* onTap: () {
                    launch(
                        'https://m.facebook.com/profile.php?id=108137289220258');
                  },*/
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.facebookSquare,
                      color: Colors.blue,
                    ),
                    title: Text("BVRIT Alumni"),
                    /*onTap: () {
                    launch('https://www.facebook.com/sdmcetalumni/');
                  },*/
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.facebookSquare,
                      color: Colors.blue,
                    ),
                    title: Text("BVRIT Media Official"),
                    /*onTap: () {
                    launch('https://www.facebook.com/SDMCETMEDIAOFFICIAL/');
                  },*/
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      color: Colors.red,
                    ),
                    title: Text("Google Maps Location"),
                    /*onTap: () {
                    launch('https://goo.gl/maps/eEy8Y7Q11DnQTvvu7');
                  },*/
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.code,
                      color: Colors.black,
                    ),
                    title: Text("About Developer"),
                    /* onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutDeveloper()));
                  },*/
                  ),
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
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://images.shiksha.com/mediadata/images/1595846985phpW2q9ja.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://images.shiksha.com/mediadata/images/1595846985phpW2q9ja.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://images.shiksha.com/mediadata/images/1595846985phpW2q9ja.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://images.shiksha.com/mediadata/images/1595846985phpW2q9ja.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                     fit: BoxFit.cover,
                        image:NetworkImage("https://images.shiksha.com/mediadata/images/1595846985phpW2q9ja.jpeg"),

                    ),
                  ),
                ),


            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
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

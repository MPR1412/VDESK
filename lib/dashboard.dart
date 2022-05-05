/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:const EdgeInsets.all(12.0) ,
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[
                  Icon(Icons.menu,color: Colors.white,size:50.0),
                  Image.asset(''),
                ]
      )
            ),
            Padding(
              padding:const EdgeInsets.all(18.0),
              child:Text("DASHBOARD",
              style:TextStyle(
                color: Colors.white12,
                fontSize:28.0,
                fontWeight: FontWeight.bold

              ),
                  textAlign:TextAlign.start,
            )
            ),
            Padding(padding:const EdgeInsets.all(12.0),
            child:Center(
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  SizedBox(
                    width:160.0,
                    height:160.0,
            child:GestureDetector(
              onTap: () {
                // To do
              },
                    child:Card(
                      color: Color.fromARGB(255, 21, 21, 21),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Padding(
                         padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.asset(''),
                              SizedBox(height: 10.0),
                              Text("IT",style: TextStyle(
                                color: Colors.white12,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,

                              )),
                              SizedBox(height: 5.0),
                              Text("dept",style: TextStyle(
                                color: Colors.white12,
                                fontWeight: FontWeight.w100

                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )

                  ),
                  SizedBox(
                      width:160.0,
                      height:160.0,
                      child:GestureDetector(
                        onTap: () {
                          // To do
                        },
                        child:Card(
                          color: Color.fromARGB(255, 21, 21, 21),
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Image.asset(''),
                                  SizedBox(height: 10.0),
                                  Text("IT",style: TextStyle(
                                    color: Colors.white12,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,

                                  )),
                                  SizedBox(height: 5.0),
                                  Text("dept",style: TextStyle(
                                      color: Colors.white12,
                                      fontWeight: FontWeight.w100

                                  ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      )

                  )
                ],
              ),
            )
            )
          ],
        ),
      ),

    );
  }
}*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vdesk/faculty/register_page.dart';

import 'login_page.dart';

class AuthScreenView extends StatefulWidget {

  @override
  _AuthScreenViewState createState() => _AuthScreenViewState();
  //debugShowCheckedModeBanner: false;
}

class _AuthScreenViewState extends State<AuthScreenView> {
  //debugShowCheckedModeBanner;: false,
  PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
    debugShowCheckedModeBanner: false;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    //pageController.jumpToPage(pageIndex);
    pageController.animateToPage(pageIndex,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //debugShowCheckedModeBanner: false,
      body: PageView(
       // debugShowCheckedModeBanner: false,
        children: [
          //debugShowCheckedModeBanner: false,
          //when pageIndex == 0
          LoginPage(),

          //when pageIndex == 1
          RegisterPage()
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
       // debugShowCheckedModeBanner: false,
      ),
      bottomNavigationBar: CupertinoTabBar(
       // debugShowCheckedModeBanner: false,
        currentIndex: pageIndex,
        onTap: onTap,
        activeColor: Theme.of(context).primaryColor,
       // debugShowCheckedModeBanner: false,
        items: [
          BottomNavigationBarItem(
             // debugShowCheckedModeBanner: false,
             // title: Text("Log-In"),
            label: 'Login',
              icon: Icon(
                FontAwesomeIcons.signInAlt,
              )
          ),
          BottomNavigationBarItem(
              //title: Text("Register"),
            label:'Register',
              icon: Icon(
                FontAwesomeIcons.userPlus,
              )),
        ],
      ),
    );
  }
}

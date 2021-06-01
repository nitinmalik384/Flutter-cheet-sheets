/*
dependency  =>    splashy_bottom_app_bar: ^0.1.0


*/


import 'package:desktop_todo/bottomCustom.dart';
import "package:flutter/material.dart";
import 'package:splashy_bottom_app_bar/splashy_bottom_app_bar.dart';

class CustomBottomAppBar extends StatefulWidget {
  @override
  _CustomBottomAppBarState createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _currentIndex = 0;
  final List<BarItem> barItems = [
    BarItem(
      text: "Home",
      iconData: Icons.home,
      color: Colors.blue,
    ),
    BarItem(
      text: "Likes",
      iconData: Icons.favorite_border,
      color: Colors.pinkAccent,
    ),
    BarItem(
      text: "Search",
      iconData: Icons.search,
      color: Colors.yellow.shade900,
    ),
    BarItem(
      text: "Profile",
      iconData: Icons.person_outline,
      color: Colors.teal,
    ),

  ];

  getContainer(){


    return AnimatedContainer(

        color: barItems[_currentIndex].color,

      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
      padding: EdgeInsets.all(16),
      child: ListView(


        children: [


          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 80
            ,
            backgroundImage:  NetworkImage("https://cdn.ndtv.com/tech/images/gadgets/pikachu_hi_pokemon.jpg?output-quality=80&output-format=webp"),
          ),
          SizedBox(height: 50,),

          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
              " Excepteur sint"
              " occaecat cupidatat"
              " non proident, sunt in culpa qui officia deserun"
              "t mollit anim id est laborum.",style: TextStyle(color: Colors.white),),
          SizedBox(height: 50,),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
              " Excepteur sint"
              " occaecat cupidatat"
              " non proident, sunt in culpa qui officia deserun"
              "t mollit anim id est laborum.",style: TextStyle(color: Colors.white)),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
              " Excepteur sint"
              " occaecat cupidatat"
              " non proident, sunt in culpa qui officia deserun"
              "t mollit anim id est laborum.",style: TextStyle(color: Colors.white)),
          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
              " Excepteur sint"
              " occaecat cupidatat"
              " non proident, sunt in culpa qui officia deserun"
              "t mollit anim id est laborum.",style: TextStyle(color: Colors.white)),
          SizedBox(height:50 ,),

        ],),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getContainer(),
      appBar: AppBar(title: Text("Custom BottomAppBar",
        style: TextStyle(color: barItems[_currentIndex].color),),
        backgroundColor: Colors.white,
      //  elevation: 0,
      centerTitle: true,),

      bottomNavigationBar: SplashyBottomAppBar(
        iconSize: MediaQuery.of(context).size.width * 0.08,
        currentIndex: _currentIndex,
        items: barItems,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
                });
       
        },
      ),
    );
  }
}

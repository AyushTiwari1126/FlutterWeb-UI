import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webpage/pages/home.dart';
import 'package:webpage/utils/constants.dart';

import 'Responsebox.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    Widget DesktopNavBar(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20,
    vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        Row(
          children: [
            navButton('Home', ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()))),
            navButton('Services',()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()))),
            navButton('About',()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()))),
            navButton('Help',()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()))),
            // navButton('Testing API Method',()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> APIRes())))
          ],
        ),
        navLogo()
      ],
    ),
  );
}
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
      );
  }
}

Widget MobileNavBar(){
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 20
    ),
    height: 70,
    child: Row(
      children: [
        Icon(Icons.menu),
        navLogo()
      ],
    ),
  );
}



Widget navLogo(){
  return Container(
    height: 60,
    width: 180,
    child: Image.asset(logo),
  );
}

Widget navButton(String text, Function() onPressed){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 4),
    child: TextButton(onPressed: onPressed, child: Text(text,
    style: TextStyle(
      fontSize: 18,
      color: text=='Home'?Colors.black:Colors.black
    ),)),

  );
}
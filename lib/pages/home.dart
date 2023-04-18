import 'package:flutter/material.dart';
import 'package:webpage/utils/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(backgr),
          fit: BoxFit.cover
          )
        ),
        child: Text("Child",style: TextStyle(fontSize: 24),),
      ),
    );
  }
}
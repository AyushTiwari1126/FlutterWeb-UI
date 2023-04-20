import 'package:flutter/material.dart';
import 'package:webpage/utils/constants.dart';
import 'package:webpage/widgets/SupportForm.dart';
import 'package:webpage/widgets/bodyContent.dart';
import 'package:webpage/widgets/Responsebox.dart';
import 'package:webpage/widgets/navBar.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(backgr),
            fit: BoxFit.cover
            )
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavBar(),
                SizedBox(height: 10,),
                BodyContent(),
                SizedBox(height: 10,),
                SupportForm(),
                SizedBox(height: 10,),
                // Services(),
                APIRes(),

              ],
            ),
          ),
          
        ),
      ),
    );
  }
}
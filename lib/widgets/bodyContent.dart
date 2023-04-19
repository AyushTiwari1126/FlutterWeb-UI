import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webpage/utils/constants.dart';

class BodyContent extends StatefulWidget {
  const BodyContent({super.key});

  @override
  State<BodyContent> createState() => _BodyContentState();
}

class _BodyContentState extends State<BodyContent> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileBodyContent(),
      desktop: DesktopBodyContent(),
    );
  }
}

Widget MobileBodyContent(){
  return Container(

  );
}

Widget DesktopBodyContent() {
  return Container(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(50),
                child: Text(
                  bodytitle,
                  style: TextStyle(fontSize: 60),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(100, 0, 100, 30),
                child: Text(
                  bodyDesc,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                  height: 42,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(20),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                        backgroundColor:
                            MaterialStateProperty.all(Color.fromARGB(255, 255, 86, 86))),
                    onPressed: () {},
                    child: Text(
                      buttontext,
                      style: TextStyle(letterSpacing: 1.2, fontSize: 20),
                    ),
                  ))
            ],
          ),
        ),
      ),
      Expanded(
        child: Container(
          child: Image.asset(
            card,
            height: 500,
            width: 500,
          ),
        ),
      )
    ],
  ));
}

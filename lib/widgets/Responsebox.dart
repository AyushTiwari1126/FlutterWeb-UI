import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIRes extends StatefulWidget {
  const APIRes({super.key});
  @override
  State<APIRes> createState() => _APIResState();
  
}
Map mapResponse = new HashMap();
Map dataResponse = new HashMap();
String stringResponse = "";
class _APIResState extends State<APIRes> {
  
  Future apicall() async{
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users/2"));
    if(response.statusCode == 200){
      setState(() {
        stringResponse = response.body;
        mapResponse = json.decode(stringResponse);
        // dataResponse = mapResponse['data'];
      });
    }
  }

  @override
  void initState(){
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),color: Colors.blue
            ),
            child: Center(child: Text(mapResponse['data'].toString()),
            ),
          ),
        ],
      ),
    );
  }
}
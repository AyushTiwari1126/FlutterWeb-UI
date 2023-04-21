// import 'dart:io';
import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:webpage/widgets/SupportForm.dart';

class APIRes extends StatefulWidget {
  const APIRes({super.key});
  @override
  State<APIRes> createState() => _APIResState();
}

reqDateTime() {
  var now = DateTime.now();
  String formattedDate = DateFormat('DDMMYYYY').format(now);
  String formattedTime = DateFormat('HHmmss').format(now);
  String reqDateTime = formattedDate + formattedTime;
  return reqDateTime;
}

referenceNumber() {
  int value1 = Random().nextInt(10);
  int value2 = Random().nextInt(10);
  String referenceNo = reqDateTime() + value1.toString() + value2.toString();
  return referenceNo;
}

Map mapResponse = {};
String stringResponse = "";

class _APIResState extends State<APIRes> {
  Future apicall() async {
    var requestBody = jsonEncode({
      "emaiId": "ayush.26tiwarigmail.com",
      "mobileNo": "9456633664",
      "refNo": referenceNumber(),
      "message": "I am not able to pay to temple."
    });
    http.Response response;
    response = await http.post(
      Uri.parse("https://register-dev.wowfinstack.com/helpdesk/emailSupport"),
      headers: {
        'ContentType': 'application/json',
        'ReqDatetime': reqDateTime()
      },
      body: requestBody,
    );
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.body;
        mapResponse = json.decode(stringResponse);
      });
    }
  }

  @override
  void initState() {
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
                borderRadius: BorderRadius.circular(10), color: Colors.blue),
            child: Center(
              child: Text(mapResponse.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
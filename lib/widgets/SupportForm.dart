import 'package:flutter/material.dart';
import 'package:webpage/utils/constants.dart';

class SupportForm extends StatefulWidget {
  const SupportForm({super.key});

  @override
  State<SupportForm> createState() => _SupportFormState();
}

class _SupportFormState extends State<SupportForm> {

  TextEditingController _mobileTEC = TextEditingController();
  TextEditingController _emailTEC = TextEditingController();
  TextEditingController _issueTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(250, 40, 250, 20),
      height: 400,
      width: 5000,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Help Section",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 42,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 400),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: _mobileTEC,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Mobile",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: _emailTEC,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: _issueTEC,
                  maxLines: 7,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Issue",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                    height: 42,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(20),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 255, 86, 86))),
                      onPressed: () {
                        var _mobile = _mobileTEC.text;
                        var _email = _emailTEC.text;
                        var _issue = _issueTEC.text;
                      },
                      child: Text(
                        helpbuttontext,
                        style: TextStyle(letterSpacing: 1.2, fontSize: 20),
                      ),
                    ))


                //-----------Button------------

                // MaterialButton(
                //   height: 30,
                //   color: Colors.amber,
                //   onPressed: (){},
                // child: Text("Submit", style: TextStyle(
                //   fontWeight: FontWeight.bold,
                //   color: Color.fromARGB(255, 237, 250, 99),
                // ),),
                // )
              ],
            ),
          )
        ],
      ),
    );

//-------------------------------- Form Validations -------------------------------------------

//     return Form(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TextFormField(
//             validator: (value) {
//               if (value == null || value.isEmpty){
//                 return errormsg;
//               }
//               return null;
//             },
//           )

//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 16.0),
//           ),
//         ],
//       )
//     );
  }
}

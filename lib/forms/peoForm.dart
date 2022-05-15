import 'dart:convert';

import 'package:app/screen/CustomErrorScreen.dart';
import 'package:app/widgets/CustomTextField10.dart';
import 'package:app/widgets/CustomTextField11.dart';
import 'package:app/widgets/CustomTextField12.dart';
import 'package:app/widgets/CustomTextField7.dart';
import 'package:app/widgets/CustomTextField8.dart';
import 'package:app/widgets/CustomTextField9.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login/SignUpPage.dart';
import '../screen/Color.dart';
import '../singup/SignInPage.dart';
import '../widgets/CustomTextField.dart';
import '../widgets/CustomTextField13.dart';
import '../widgets/GlassMorphismContainer.dart';
import 'package:http/http.dart' as http;

var names = ['dooro mid'];
var names1 = ['dooro mid'];
var names2 = ['dooro mid'];
var names3 = ['dooro mid'];
var names4 = ['dooro mid'];
String text = "";
String text1 = "";
String text2 = "";
String text3 = "";
String text4 = "";

var user="1";
bool bol = true;
bool bol1 = true;
bool bol2 = true;
bool bol3 = true;
bool bol4 = true;

TextEditingController vc= TextEditingController();
TextEditingController ac= TextEditingController();
TextEditingController wh= TextEditingController();
TextEditingController cr= TextEditingController();
TextEditingController ad= TextEditingController();
TextEditingController dt= TextEditingController();
TextEditingController des= TextEditingController();
TextEditingController cus= TextEditingController();
TextEditingController cdel= TextEditingController();

class peoForm extends StatefulWidget {
  const peoForm({Key? key}) : super(key: key);

  @override
  _peoFormState createState() => _peoFormState();
}

class _peoFormState extends State<peoForm> {
  @override
  Widget build(BuildContext context) {
    CustomErrorMessege();
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        // reverse: true,
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("images/pol.jpg"),
             fit: BoxFit.cover
           ),
            gradient: LinearGradient(
                colors: [
                  purpleBack,
                  blueBack,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),
          ),
          child: SafeArea(
            child: Stack(
              children: [
                Positioned(
                    left: -50,
                    top: Get.height * 0.075,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Color(0xD789229C), circlePurpleDark]
                          )
                      ),
                    )
                ),
                Positioned(
                    right: -50,
                    bottom: Get.height * 0.075,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [circlePurpleLight, circlePurpleDark]
                          )
                      ),
                    )
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      alignment: Alignment.centerRight,
                      // child: GlassMorphismContainer(
                      //     height: 60,
                      //     width: 60,
                      //     borderRadius: 25,
                      //     // child: Icon(
                      //     //   Icons.notifications, color: Colors.white,
                      //     // )
                      // ),
                    ),
                    GlassMorphismContainer(
                        height: Get.height * 0.75,
                        width: Get.width* 0.8,
                        borderRadius: 20,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                          child: Column(
                            children: [
                              Spacer(),
                              Text(
                                "Complaint Form",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Spacer(),
                              Container(
                                //padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.white, width: 2)
                                ),
                                child: DropdownButton<String>(
                                  //hint: Text("Victim"),
                                  isExpanded: true,
                                  iconSize: 36,
                                  icon: Icon(Icons.arrow_drop_down, color: Colors.white,),
                                  items: names.map((String magac) {
                                    return DropdownMenuItem<String>(
                                      value: magac,
                                      child: Text(magac,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          color: Colors.white
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? val) {
                                    setState(() {
                                      text = "${val}";
                                      dir(context);
                                    });
                                  },
                                 // value: text,
                                ),
                              ),
                              Text(text),
                             const SizedBox(height: 10,),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.white, width: 2)
                                ),
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  hint: Text("Acussed"),
                                  iconSize: 36,
                                  icon: Icon(Icons.arrow_drop_down, color: Colors.white,),
                                  items: names2.map((String magac2) {
                                    return DropdownMenuItem<String>(
                                      value: magac2,
                                      child: Text(magac2,
                                        style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                      ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? val2) {
                                    setState(() {
                                      text2 = "${val2}";
                                      dir2(context);
                                    });
                                  //  print(text2);
                                  },

                                 //value: text2
                                ),
                              ),
                             //Text(text),
                              SizedBox(height: 7,),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.white, width: 2)
                                ),
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  hint: Text("Withness"),
                                  iconSize: 36,
                                  icon: Icon(Icons.arrow_drop_down, color: Colors.white,),
                                  items: names3.map((String magac3) {
                                    return DropdownMenuItem<String>(
                                      value: magac3,
                                      child: Text(magac3,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? val3) {
                                    setState(() {
                                      text3 = "${val3}";
                                      dir3(context);
                                    });
                                  },
                                 //value: text3,
                                ),
                              ),
                             //Text(text),
                              SizedBox(height: 7,),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.white, width: 2)
                                ),
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  hint: Text("Crime"),
                                  iconSize: 36,
                                  icon: Icon(Icons.arrow_drop_down, color: Colors.white,),
                                  items: names4.map((String magac4) {
                                    return DropdownMenuItem<String>(
                                      value: magac4,
                                      child: Text(magac4,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? val4) {
                                    setState(() {
                                      text4 = "${val4}";
                                      dir4(context);
                                    });
                                  },
                                 // value: text4,
                                ),
                              ),
                             //Text(text),
                              SizedBox(height: 7,),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.white, width: 2)
                                ),
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  hint: Text("Address"),
                                  iconSize: 36,
                                  icon: Icon(Icons.arrow_drop_down, color: Colors.white,),
                                  items: names1.map((String magac1) {
                                    return DropdownMenuItem<String>(
                                      value: magac1,
                                      child: Text(magac1,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? val1) {
                                    setState(() {
                                      text1 = "${val1}";
                                      dir1(context);
                                    });
                                  },
                                 // value: text1,
                                ),
                              ),
                              Text(text1),
                              // CustomTextFiled9(
                              //   prefixIcon: Icons.people_alt_rounded,
                              //   hindText: "Name of the Withness",
                              //   suffixIcon: Icons.remove_red_eye,
                              // ),
                              //SizedBox(height: 7,),
                              // CustomTextFiled10(
                              //   prefixIcon: Icons.event,
                              //   hindText: "Type Of Crime",
                              //   suffixIcon: Icons.remove_red_eye,
                              // ),
                              // SizedBox(height: 7,),
                              SizedBox(height: 7,),
                              CustomTextFiled11(
                                prefixIcon: Icons.date_range_rounded,
                                hindText: "Date",
                                suffixIcon: Icons.remove_red_eye,
                              ),
                              SizedBox(height: 7,),
                              CustomTextFiled12(
                                prefixIcon: Icons.description,
                                hindText: "Description",
                                suffixIcon: Icons.remove_red_eye,
                              ),
                              // SizedBox(height: 7,),
                              // CustomTextFiled13(
                              //   prefixIcon: Icons.verified_user,
                              //   hindText: "User Id",
                              //   suffixIcon: Icons.remove_red_eye,
                              // ),
                              // SizedBox(height: 7,),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: RaisedButton(
                                  color: Colors.white.withOpacity(0.3),
                                  onPressed: (){
                                    dir(context);
                                    dir1(context);
                                    dir2(context);
                                    dir3(context);
                                    dir4(context);
                                    complaint(context);
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                  child: Text("Submit",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                              // GestureDetector(
                              //   onTap: () => Get.to(() => SignInPage()) ,
                              //   child: Container(
                              //     alignment: Alignment.center,
                              //     child: Container(
                              //       padding: EdgeInsets.symmetric(
                              //         horizontal: 16.0,
                              //       ),
                              //       height: 50.0,
                              //       width: 200,
                              //       alignment: Alignment.center,
                              //       decoration: BoxDecoration(
                              //         border: Border.all(
                              //           width: 2.0,
                              //           color: Colors.white,
                              //         ),
                              //         borderRadius: BorderRadius.all(
                              //           Radius.circular(30.0),
                              //         ),
                              //       ),
                              //       child: Text("Submit",
                              //         style: TextStyle(
                              //             color: Colors.white,
                              //             fontSize: 20
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              Spacer(),
                            ],
                          ),
                        )
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: GlassMorphismContainer(
                        height: 50.0,
                        width: Get.width * 0.80,
                        borderRadius: 10,
                        child: Center(
                          child: Text("Please Don't submit what didn't even happen",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),
                          ),
                        ),

                      ),
                    ),
                    Spacer(),
                  ],
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}

Future dir(BuildContext context) async {
 try{
   var ul = "http://192.168.142.149:81/combo.php";
   http.Response response = await http.post(Uri.parse(ul), body:'');
   var xog = jsonDecode(response.body);
   if (bol) {
     for (int i = 0; i < xog.length; i++) {
       var xy = xog[i].values.toList();
       names.add(xy[0]);
     }
     bol = false;
   }
 }catch(e){
   print('Meshaan Lagaa heystaa: $e');
 }
}

Future dir1(BuildContext context) async {
  try{
    var ul1 = "http://192.168.142.149:81/comboadd.php";
    http.Response response = await http.post(Uri.parse(ul1), body: '');
    var xog1 = jsonDecode(response.body);
    if (bol1) {
      for (int i = 0; i < xog1.length; i++) {
        var xy1 = xog1[i].values.toList();
        names1.add(xy1[0]);
      }
      bol1 = false;
    }
  }catch(e){
    print('Meshaan Lagaa heystaa: $e');
  }
}

Future dir2(BuildContext context) async {
  try{
    var ul2 = "http://192.168.142.149:81/comboac.php";
    http.Response response = await http.post(Uri.parse(ul2), body: '');
    var xog2 = jsonDecode(response.body);
    if (bol2) {
      for (int i = 0; i < xog2.length; i++) {
        var xy2 = xog2[i].values.toList();
        names2.add(xy2[0]);
      }
      bol2 = false;
    }
  }catch(e){
    print('Meshaan Lagaa heystaa: $e');
  }
}


Future dir3(BuildContext context) async {
  try{
    var ul3 = "http://192.168.142.149:81/combowh.php";
    http.Response response = await http.post(Uri.parse(ul3), body: '');
    var xog3 = jsonDecode(response.body);
    if (bol3) {
      for (int i = 0; i < xog3.length; i++) {
        var xy3 = xog3[i].values.toList();
        names3.add(xy3[0]);
      }
      bol3 = false;
    }
  }catch(e){
    print('Meshaan Lagaa heystaa: $e');
  }
}


Future dir4(BuildContext context) async {
  try{
    var ul4 = "http://192.168.142.149:81/combocr.php";
    http.Response response = await http.post(Uri.parse(ul4), body: '');
    var xog4 = jsonDecode(response.body);
    if (bol4) {
      for (int i = 0; i < xog4.length; i++) {
        var xy4 = xog4[i].values.toList();
        names4.add(xy4[0]);
      }
      bol4 = false;
    }
  }catch(e){
    print('Meshaan Lagaa heystaa: $e');
  }
}


Future complaint(context) async{
  try{
    Map xog = {'txtvc':text, 'txtac':text2,
      'txtwh':text3, 'txtcr':text4, 'txtad':text1,
      'txtdt':dt.text, 'txtdes':des.text, 'txtuserid':user
    };
    http.Response res = await http.post(Uri.parse("http://192.168.142.149:81/complaint.php"), body: xog);

   //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(res.body)));
    var data= json.decode(json.encode(res.body));
    if(data == "success"){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(res.body)));
      print(res.body);
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>NewHome()));
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(res.body)));
    }
  }catch(e){
    print('Meshaan Lagaa heystaa: $e');
  }
}
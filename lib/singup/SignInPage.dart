
import 'dart:convert';

import 'package:app/login/SignUpPage.dart';
import 'package:app/screen/Color.dart';
import 'package:app/widgets/CustomTextField4.dart';
import 'package:app/widgets/CustomTextField5.dart';
import 'package:app/widgets/CustomTextField6.dart';
import 'package:app/widgets/GlassMorphismContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/newHome.dart';
import '../widgets/CustomTextField.dart';
import 'package:http/http.dart' as http;

TextEditingController username = TextEditingController();
TextEditingController pass = TextEditingController();

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
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
                              colors: [circlePurpleLight, circlePurpleDark]
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
                      child: GlassMorphismContainer(
                          height: 60,
                          width: 60,
                          borderRadius: 25,
                          child: Icon(
                            Icons.notifications, color: Colors.white,
                          )
                      ),
                    ),
                    GlassMorphismContainer(
                        height: Get.height * 0.65,
                        width: Get.width* 0.8,
                        borderRadius: 20,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
                          child: Column(
                            children: [
                              Spacer(),
                              Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              Spacer(),
                              CustomTextFiled5(
                                prefixIcon: Icons.email,
                                hindText: "Email",
                              ),
                              SizedBox(height: 10,),
                              CustomTextFiled6(
                                isObscure: true,
                                prefixIcon: Icons.lock,
                                hindText: "Password",
                                suffixIcon: Icons.remove_red_eye,
                              ),
                              SizedBox(height: 10,),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: RaisedButton(
                                  color: Colors.white.withOpacity(0.3),
                                  onPressed: (){
                                    // sendData(context);
                                    Login(context);
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                  child: Text("Login",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                              // GestureDetector(
                              //   onTap: () {
                              //
                              //     Navigator.push(context, MaterialPageRoute
                              //       (builder: (context) => NewHome()));
                              //
                              //   },
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
                              //       child: Text("Get Started",
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
                          onTap:() => Get.to(() => SignUpPage()),

                      child: GlassMorphismContainer(
                        height: 50.0,
                        width: Get.width * 0.80,
                        borderRadius: 10,
                        child: Center(
                          child: Text("Don't Have Account Register Here",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
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
//CustomTextFiled
Future Login(context) async{
  Map xog = {'username':username.text, 'password':pass.text};
  http.Response res = await http.post(Uri.parse("http://192.168.142.149:81/log.php"), body: xog);
  print(res.body);
  // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(res.body)));
  var data= json.decode(res.body);
  if(data == "success"){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(res.body)));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewHome()));
  }
  else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(res.body)));
  }
}

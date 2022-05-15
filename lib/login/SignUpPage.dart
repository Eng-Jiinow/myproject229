import 'package:app/widgets/CustomTextField3.dart';
import 'package:app/widgets/CustomTextField4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screen/Color.dart';
import '../singup/SignInPage.dart';
import '../widgets/CustomTextField.dart';
import '../widgets/CustomTextField1.dart';
import '../widgets/CustomTextField2.dart';
import '../widgets/GlassMorphismContainer.dart';
import 'package:http/http.dart' as http;
TextEditingController fs= TextEditingController();
TextEditingController ls= TextEditingController();
TextEditingController em= TextEditingController();
TextEditingController us= TextEditingController();
TextEditingController ps= TextEditingController();
TextEditingController del= TextEditingController();

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                    right: -75,
                    bottom: Get.height * 0.050,
                    child: Container(
                      height: 200,
                      width: 250,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => Get.back(),
                            child: GlassMorphismContainer(
                                height: 60,
                                width: 60,
                                borderRadius: 25,
                                child: Icon(
                                  Icons.arrow_back_ios, color: Colors.white,
                                )
                            ),
                          ),
                          GlassMorphismContainer(
                              height: 60,
                              width: 60,
                              borderRadius: 25,
                              child: Icon(
                                Icons.notifications, color: Colors.white,
                              )
                          ),
                        ],
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
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Spacer(),
                              CustomTextFiled(
                                // textEditingController: fs,
                                prefixIcon: Icons.person,
                                hindText: "First Name",
                              ),
                              SizedBox(height: 10,),
                              CustomTextFiled1(
                                prefixIcon: Icons.person_rounded,
                                hindText: "Last Name",
                              ),
                              SizedBox(height: 10,),
                              CustomTextFiled2(
                                prefixIcon: Icons.verified_user,
                                hindText: "User Name",
                              ),
                              SizedBox(height: 10,),
                              CustomTextFiled3(
                                prefixIcon: Icons.email,
                                hindText: "Email",
                              ),
                              SizedBox(height: 10,),
                              CustomTextFiled4(
                                isObscure: true,
                                prefixIcon: Icons.lock,
                                hindText: "Password",
                                suffixIcon: Icons.remove_red_eye,
                              ),
                              SizedBox(height: 10,),
                              Container(
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(40),
                                //   gradient: LinearGradient(
                                //     colors: [
                                //       Colors.cyan,
                                //       Colors.greenAccent
                                //     ]
                                //   )
                                // ),
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: RaisedButton(
                                  color: Colors.white.withOpacity(0.3),
                                    onPressed: (){
                                    sendData(context);
                                    },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(26),
                                  ),
                                  child: Text("Sign Up",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),
                                  ),
                                    ),
                              ),
                              
                              // RaisedButton(
                              //   onPressed: (){
                              //     setState((){
                              //       sendData(context);
                              //     });
                              //   },
                              //   child: GestureDetector(
                              //     onTap: () => Get.to(SignInPage()) ,
                              //     child: Container(
                              //       alignment: Alignment.center,
                              //       child: Container(
                              //         padding: EdgeInsets.symmetric(
                              //           horizontal: 16.0,
                              //         ),
                              //         height: 50.0,
                              //         width: 200,
                              //         alignment: Alignment.center,
                              //         decoration: BoxDecoration(
                              //           border: Border.all(
                              //             width: 2.0,
                              //             color: Colors.white,
                              //           ),
                              //           borderRadius: BorderRadius.all(
                              //             Radius.circular(30.0),
                              //           ),
                              //         ),
                              //         child: Text("Submit",
                              //           style: TextStyle(
                              //               color: Colors.white,
                              //               fontSize: 20
                              //           ),
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
                    Text("By Sign Up You can report Crimes That occur Now",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                    SizedBox(height: 10,),
                    // GestureDetector(
                    //   onTap: () => Get.to(SignUpPage()),
                    //   child: GlassMorphismContainer(
                    //     height: 50.0,
                    //     width: Get.width * 0.80,
                    //     borderRadius: 10,
                    //     child: Center(
                    //       child: Text("Don't Have Account Register Here",
                    //         textAlign: TextAlign.center,
                    //         style: TextStyle(
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //
                    //   ),
                    // ),
                    // Spacer(),
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

Future sendData(context) async{
  Map xog = {'txtfs':fs.text,'txtls':ls.text,'txtem':em.text,
    'txtuser':us.text, 'txtpass':ps.text, 'txtdel':del.text};
  http.Response res = await http.post(Uri.parse('http://192.168.43.246:81/reg.php'), body: xog);
  print(res.body);
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(res.body)));

}

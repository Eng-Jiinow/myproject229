import 'package:app/screen/Color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../singup/SignInPage.dart';
import '../widgets/GlassMorphismContainer.dart';



class NewScreen extends StatelessWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: Get.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                purpleBack,
                blueBack,
              ],
            begin: Alignment.topLeft,
              end: Alignment.bottomRight

          )
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
                right: 0,
                top: 90,
                child: Container(
                  alignment: Alignment.center,
                    // color: Colors.yellow,
                    child: Text(
                        "Welcome To Crime Record System",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                    ))
            ),
            Positioned(
              left: 0,
                right: 0,
                bottom: Get.width * 0.30 + 100,
                child: Container(
                  height: 175,
                  width: 175,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [purpleLight, purpleBack],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    shape: BoxShape.circle,
                  ),
                )
            ),
            Positioned(
              bottom: -10,
              left: 0,
              right: 0,
              child: GlassMorphismContainer(

                height: Get.height * 0.40,
                width: Get.width,
                borderRadius: 50.0,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Welcome Here Sign In With \n your Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Colors.white
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(SignInPage()) ,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 24,
                            ),
                            height: 50.0,
                            width: 200,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                            ),
                            child: Text("Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}


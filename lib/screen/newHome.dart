

import 'dart:ui';

import 'package:app/forms/peoForm.dart';
import 'package:app/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewHome extends StatefulWidget {
  const NewHome({Key? key}) : super(key: key);

  @override
  State<NewHome> createState() => _NewHomeState();
}

class _NewHomeState extends State<NewHome> {
  List ListView = [
  //   {
  // "img":"images/sc1.png",
  // "name":"Submit ",
  //  "decr":"Report A crime Here"
  //   },
    //{"img":"images/peo1.png", "name":"Submit Crime", "decr":"Report A crime Here"},
    {"img":"images/peo1.png", "name":"Submit A Report", "decr":""},
    // {"img":"images/sc1.png", "name":"Submit ", "decr":""}
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/sc1.png"
            ),
            fit: BoxFit.cover
          ),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xA1131300),
                  Color(0xB1B10FA1)
                ]
            )
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("People Section",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: List.generate(ListView.length, (index) => CardDesign(
                    img: ListView[index]["img"],
                    title: ListView[index]["name"],
                    decr: ListView[index]["decr"]
                  ))
                    // SizedBox(height: 50,),


                ),
              )
            ],
          ),
        ),
      ),
    );
  }

   CardDesign({String? img,String? title, String? decr}){
    return Column(
      children: <Widget>[
        SizedBox(height: 50,),
        Stack(
          overflow: Overflow.clip,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Transform(
                transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateX(Offset(0.0, 0.6).dx)
                  ..rotateY(Offset(0.0, 0.7).dy),
                origin: Offset(50.0, 50.0),

                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 25.0,
                    height: 150,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Colors.white60,
                              Colors.white10
                            ]
                        ),
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                    ),

                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 45.0,
                height: 180,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.11),
                    borderRadius: BorderRadius.all(Radius.circular(25))
                ),
              ),
            ),
            Positioned(
                top: -21,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("${img}",
                    width: 180,
                    height: 180,
                  ),
                )
            ),
            Positioned(
              top: 40,
              left: 25,
              child: Text("${title}",
                style: TextStyle(
                    color: Colors.deepPurpleAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 25,
              child: Container(
                width: 100,
                child: Text("${decr}",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 10
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 35,
                left: 29,
                child: FlatButton(
                  color: Colors.deepPurple,
                 onPressed: (){
                    Navigator.push(context, MaterialPageRoute
                      (builder: (context) => peoForm()));
                 },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                 child: Text("Press Here",
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 10,
                     color: Colors.yellow
                   ),
                 ),
                ),
            )
          ],
        )
      ],
    );
  }
}

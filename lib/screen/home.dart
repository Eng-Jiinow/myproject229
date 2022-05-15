import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
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
                child: Column(
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
                            child: Container(
                              width: MediaQuery.of(context).size.width - 25.0,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                borderRadius: BorderRadius.all(Radius.circular(25))
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
                              child: Image.asset("images/peo.jpg",
                              width: 180,
                                height: 180,
                              ),
                            )
                        ),
                        Positioned(
                          top: 40,
                          left: 25,
                          child: Text("Submit Crime",
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                          ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

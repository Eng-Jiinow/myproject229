import 'package:flutter/material.dart';

class CustomErrorMessege extends StatefulWidget {
  const CustomErrorMessege({Key? key}) : super(key: key);

  @override
  _CustomErrorMessegeState createState() => _CustomErrorMessegeState();
}

class _CustomErrorMessegeState extends State<CustomErrorMessege> {
  @override
  Widget build(BuildContext context) {
    return CustomErrorMessege();
  }
  CustomErorrScreen(){
    return ErrorWidget.builder= ((details) {
      return Material(
        child: Container(
          color: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/error.png'),
              SizedBox(height: 50,),
              Padding(padding: EdgeInsets.all(8.0),
              child: Text(
                details.exception.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),
                textAlign: TextAlign.center,
              ),
              )
            ],
          ),
        ),
      );
    });
  }
}

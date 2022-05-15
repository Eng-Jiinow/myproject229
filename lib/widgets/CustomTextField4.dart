import 'package:app/login/SignUpPage.dart';
import 'package:app/singup/SignInPage.dart';
import 'package:flutter/material.dart';

class CustomTextFiled4 extends StatelessWidget {
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final TextEditingController? textEditingController;
  final bool isObscure;
  final String? hindText;
  const CustomTextFiled4({
    Key? key,   this.suffixIcon,  this.prefixIcon,
    this.textEditingController,
    this.isObscure = false,
    this.hindText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white, width: 2.0),
          borderRadius: BorderRadius.all(
              Radius.circular(20.0)
          )
      ),
      child: Row(
        children: [

          Icon(
            this.prefixIcon,
            color: Colors.white,
          ),
          SizedBox(width: 5,),
          Expanded(
            child: TextField(
              controller: pass,
              style: TextStyle(fontSize: 20, color: Colors.white),
              obscureText: this.isObscure,
              decoration: InputDecoration(
                  hintText: this.hindText,
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                  ),
                  border: InputBorder.none
              ),
            ),
          ),
        ],
      ),
    );
  }
}

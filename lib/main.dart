import 'package:app/forms/peoForm.dart';
import 'package:app/login/login.dart';
import 'package:app/screen/CustomErrorScreen.dart';
import 'package:app/screen/NewScreen.dart';
import 'package:app/screen/home.dart';
import 'package:app/screen/newHome.dart';
import 'package:app/singup/SignInPage.dart';
import 'package:app/singup/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/homepage.dart';
import 'login/login.dart';

void main(){
  runApp(
      GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: NewScreen(),
  ));
}
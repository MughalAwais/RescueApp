//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:project/login.dart';
import 'package:project/register.dart';

void main() {
  runApp(MaterialApp(   //widget with more features i.e nav, themes
    debugShowCheckedModeBanner: false, // remove debug banner from screen
    initialRoute: 'login', // 1st goes to login page
    routes: {
      'login': (context) => MyLogin(),//class name in which login page is set
      'register': (context) => MyRegister()
    },
  ));
}



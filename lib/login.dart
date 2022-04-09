import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {    //use stf
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(     //using container to set background image
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/login.webp'), fit: BoxFit.cover)
      ),
    child:Scaffold(  //for normal scaffold use
      backgroundColor: Colors.transparent, //to show backgound image bcz default is WHITE in scaffold property
      body: Stack(
        children: [
          Container( //for adding margins
            child: Text('Welcome\nBack'),
          )
        ],
      ),
    ),
    );

  }
}

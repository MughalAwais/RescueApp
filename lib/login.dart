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
            //padding: EdgeInsets.only(left: 35, top: 180),
            child: Text('Login', style: TextStyle(
              fontSize: 33,
              color: Colors.orange,
            ),),
          ),
          SingleChildScrollView( //to scroll up screen when opens keyboard
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3, //Adjust according to diff screen sizes
                  right: 35,
                  left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,// invisible input
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sign In',
                        style: TextStyle(
                        fontSize: 27, fontWeight: FontWeight.w700
                      ),
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.green,
                        child: IconButton(
                          color: Colors.white,
                          iconSize: 30,
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 138,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'register');
                      },
                          child: Text('Sign Up', style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),)),
                      TextButton(onPressed: (){},
                          child: Text('Forget Password', style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),))
                    ],

                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
    );

  }
}

import 'package:flutter/material.dart';
import 'package:banking_app/HomePage.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        '/homePage' : (context)=>HomePage(),
      },
    );
  }
}
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}
class _LoginState extends State<Login> {
  TextEditingController _textController = TextEditingController();
  TextEditingController _textpassController = TextEditingController();

  List<String> credentialUser = [
    'admin',
  ];
  List<String> credentialPass = [
    'admin',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.lightBlue[50],
        body: Padding(
          padding: EdgeInsets.symmetric(vertical:150, horizontal: 60),
          child: Column(
          children:[
            Text(
              'Welcome Back',
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 40, 
                    fontWeight: FontWeight.w700
                    ),
                    textAlign: TextAlign.center,
                  ),
            TextField(
              controller: _textController,
              maxLength: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                
              ),
            ),
          TextField(
            controller: _textpassController,
            maxLength: 10,
            obscureText: true,
            decoration: InputDecoration (
                border: OutlineInputBorder(),
                labelText: 'Password',
            ),
          ),
          InkWell(
                  onTap: () {if (!credentialUser
                          .contains(_textController.text.toLowerCase()) ||
                      (!credentialPass
                          .contains(_textpassController.text.toLowerCase()))) {
                    setState(() {
                      final snackBar = SnackBar(
                          content: Text('Incorrect Username or Password'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                  } else {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => homePage()),
                      );
                    });
                  }},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xff7d32a8),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Login", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white
                          ),),
                          Icon(Icons.arrow_forward, size: 17,)
                        ],
                      ),
                    ),
                  ), 
             ),
                Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              width: double.infinity,
              child: GestureDetector(
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () => print('Success'),
              ),
            ),
         
            ],
        ),
      ),
    );
  }
}
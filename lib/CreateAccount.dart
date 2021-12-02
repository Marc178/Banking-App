import 'package:flutter/material.dart';

class createAccount extends StatelessWidget {
  const createAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext conte){
    return Scaffold(
       backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 100, horizontal: 40),
        child: Column (
          children: [
            Text(
              'Welcome to MK Bank',
                    style: TextStyle(
                    color: Colors.black,
                    fontSize: 50, 
                    fontWeight: FontWeight.w700
                    ),
            ),
            TextField(
            maxLength: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Account Name',
              ),
            ),
            TextField(
            maxLength: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Account Number',
              ),
            ),
            TextField(
            maxLength: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Account Address',
              ),
            ),
            TextField(
            maxLength: 10,
            obscureText: true,
            decoration: InputDecoration (
                border: OutlineInputBorder(),
                labelText: 'Password',
            ),
          ),
            ElevatedButton(
            child: Text('Create Account'),
            onPressed: (){
              print('Creating');
             },
           ),
          ],
        ),
      ),
    );
  }

}
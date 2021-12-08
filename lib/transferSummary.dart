// ignore_for_file: file_names
import 'dart:html';

import 'package:banking_app/providers/providerMoney.dart';
import 'package:banking_app/transferMoney.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:banking_app/HomePage.dart';
import 'package:flutter/services.dart';

class transferDetail extends StatelessWidget {
      String amountTrans,accountNum,destinationAcc,remarks,transferChan;
      transferDetail({Key? key,required this.amountTrans,required this.accountNum,required this.destinationAcc,required this.remarks,required this.transferChan}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF37474F),
          title: Text(
            'Transfer Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              );
            },
          )),
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                 IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.send),
                  onPressed: (){},
                ),
                Text('Amount of Money: $amountTrans', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                ),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.send),
                  onPressed: (){},
                ),
                Text('Account Number: $accountNum', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                )),
              ],
            ),
            Row(
              children: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.send),
                  onPressed: (){},
                ),
                Text('Destination Account: $destinationAcc', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                )),
              ],
            ),
            Row(
              children: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.send),
                  onPressed: (){},
                ),
                Text('Transfer Channel: $transferChan', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                )),
              ],
            ),
            Row(
              children: [
                IconButton(
                  iconSize: 30,
                  icon: Icon(Icons.send),
                  onPressed: (){},
                ),
                Text('Remarks: $remarks', style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                )),
              ],
            ),
            const SizedBox(height: 20.0,),
            ElevatedButton(
                onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const HomePage())),
                child: const Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text('Home Page'),
                ),
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(Colors.blue),
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40))))
                )
            
          ],
        ) ,),
    );  
  }

  }





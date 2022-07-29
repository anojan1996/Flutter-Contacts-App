// import 'dart:html';

import 'package:flutter/material.dart';

import 'Add_Contacts.dart';
import 'Home_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData(backgroundColor: Colors.black),
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar: AppBar(
          title: Text('Contacts App'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
         onPressed:(){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>AddContacts()));
      },
          child: Icon(Icons.add),
          // backgroundColor: Colors.blueAccent,
        ),
       
        body: HomePage(),
        // backgroundColor: Colors.black12,
        )
      
    );
  }
}
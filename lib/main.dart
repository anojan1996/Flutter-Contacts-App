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
      debugShowCheckedModeBanner:false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: HomePage(),
      // home:Scaffold(
      //   appBar: AppBar(
      //     title: Text('Contacts App'),
      //     centerTitle: true,
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed:(){
      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>AddContacts()));
      // },
      //   ),
      //  body: HomePage(),
      //   )
      
    );
  }
}
import 'package:flutter/material.dart';

import 'Edit_Contact.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => EditContacts(),));
              },
      child: ListView(
        padding: const EdgeInsets.all(8),
      children: <Widget>[
      Container(
        height: 75,
        color: Colors.lightBlueAccent,
        child: const Center(child: Text('Anojan')),
      ),
      SizedBox(height: 15,),
      Container(
        height: 75,
        color: Colors.lightBlueAccent,
        child: const Center(child: Text('Kandee')),
      ),
       SizedBox(height: 15,),
      Container(
        height: 75,
        color: Colors.lightBlueAccent,
        child: const Center(child: Text('Thusa')),
      ),
      ],
      ),
      
    );
    
  }
}
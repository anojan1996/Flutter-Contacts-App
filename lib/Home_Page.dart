import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'Add_Contacts.dart';
import 'Edit_Contact.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ref = Firestore.instance.collection('contacts');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts App'),
        centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:(){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddContacts()));
      },
        ),
        body: StreamBuilder(
          stream: ref.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot>snapshot) {
            return ListView.builder(
              itemCount: snapshot.hasData?snapshot.data!.documents.length:0,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    leading: const Icon(Icons.list),
                    trailing:  Text(
                      snapshot.data!.documents[index].data['number'],
                      style: TextStyle(color: Colors.green, fontSize: 15),
                    ),
                    title: Text(
                      snapshot.data!.documents[index].data['name']
                    ));
              });
          }
        ),
    //     body: Column(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: [
    //         Expanded(
    //           child: GestureDetector(
    //   onTap: () {
    //             Navigator.push(
    //               context, MaterialPageRoute(builder: (context) => EditContacts(),));
    //           },
    //   child: ListView(
    //     padding: const EdgeInsets.all(8),
    //   children: <Widget>[
    //   Container(
    //     height: 75,
    //     color: Color.fromARGB(255, 172, 176, 197),
    //     child: const Center(child: Text('Anojan')),
    //   ),
    //   SizedBox(height: 15,),
    //   Container(
    //     height: 75,
    //     color: Color.fromARGB(255, 172, 176, 197),
    //     child: const Center(child: Text('Kandee')),
    //   ),
    //    SizedBox(height: 15,),
    //   Container(
    //     height: 75,
    //     color: Color.fromARGB(255, 172, 176, 197),
    //     child: const Center(child: Text('Thusa')),
    //   ),
    //   ],
    //   ),
      
    // ), )
    //       ],
          
    //     ),
    );
    
    
  }
}
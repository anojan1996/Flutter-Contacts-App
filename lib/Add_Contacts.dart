import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddContacts extends StatefulWidget {
  @override
  State<AddContacts> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();

  final CollectionReference ref = Firestore.instance.collection('contacts');
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(
            onPressed: (){
            ref.add({
             'name':name.text,
             'number':number.text 
            }).whenComplete(() => Navigator.pop(context));
          },
          child: Text('Save'),)
        ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(border:Border.all()),
                child: TextField(
                  controller: name,
                  decoration: InputDecoration(hintText: 'Name'),
                ), 
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
                  decoration: BoxDecoration(border:Border.all()),
                  child: TextField(
                    controller: number,
                    // maxLines: null,
                    // expands: true,
                    decoration: InputDecoration(hintText: 'Number'),
                  ), 
            ),
          ),
          ],),
        ),
      
    );
  }
}
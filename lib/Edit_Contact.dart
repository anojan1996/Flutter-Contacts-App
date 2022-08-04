import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EditContacts extends StatefulWidget {
  late DocumentSnapshot docToEdit;
  EditContacts({required this.docToEdit});

 

  @override
  State<EditContacts> createState() => _EditContactsState();
}

class _EditContactsState extends State<EditContacts> {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    name = TextEditingController(text: widget.docToEdit.data['name']);
    number = TextEditingController(text: widget.docToEdit.data['number']);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        actions: [
          FlatButton(onPressed: (){
            widget.docToEdit.reference.updateData({
             'name':name.text,
             'number':number.text 
            }).whenComplete(() => Navigator.pop(context));
          },
          child: Text('Save'),),
          FlatButton(onPressed: (){
            widget.docToEdit.reference.delete().whenComplete(() => Navigator.pop(context));
          },
          child: Text('Delete'),),
          
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
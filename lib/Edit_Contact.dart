import 'package:flutter/material.dart';

class EditContacts extends StatefulWidget {

  @override
  State<EditContacts> createState() => _EditContactsState();
}

class _EditContactsState extends State<EditContacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Text('Edit Contacts'),
    );
  }
}
import 'package:flutter/material.dart';

class AddContacts extends StatefulWidget {
  @override
  State<AddContacts> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Text('Add Contacts'),
    );
  }
}
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key, required this.controller, required this.text})
      : super(key: key);
  String text;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return TextField(
      controller: this.controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey,
          label: Text(
            text,
          ),
          labelStyle: TextStyle(color: Colors.white)),
    );
  }
}

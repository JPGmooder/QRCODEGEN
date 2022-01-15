import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({Key? key, required this.controller, required this.text})
      : super(key: key);
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          controller: controller,
          style: TextStyle(color: Colors.white),
          enabled: false,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              label: Text(
                text,
              ),
              labelStyle: TextStyle(color: Colors.white)),
        ),
        Positioned(
          right: 10,
          child: IconButton(
              icon: Icon(Icons.link),
              onPressed: () async => controller.text =
                  (await Clipboard.getData("text/plain"))!.text ?? ""),
        )
      ],
    );
  }
}

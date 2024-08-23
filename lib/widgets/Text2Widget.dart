import 'package:flutter/material.dart';

class WidgetTextfield extends StatefulWidget {
  const WidgetTextfield({super.key});

  @override
  State<WidgetTextfield> createState() => _WidgetTextfieldState();
}

class _WidgetTextfieldState extends State<WidgetTextfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.person),
            suffixIcon: Icon(Icons.call),
            hintText: "enter your name",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),fillColor:Colors.green,filled: true),
      )),
    );
  }
}

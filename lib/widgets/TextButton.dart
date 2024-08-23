import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textbutton extends StatefulWidget {
  const Textbutton({super.key});

  @override
  State<Textbutton> createState() => _TextbuttonState();
}

class _TextbuttonState extends State<Textbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.pink.shade50,
      body: Center(
        child: TextButton(onPressed: () {
          print("object");
        },
            child: Text("submit",style: TextStyle(color: Colors.brown,fontSize: 100),)),
      ),
      );
  }
}

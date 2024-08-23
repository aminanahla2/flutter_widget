import 'package:flutter/material.dart';

class Textwidget extends StatefulWidget {
  const Textwidget({super.key});

  @override
  State<Textwidget> createState() => _TextwidgetState();
}

class _TextwidgetState extends State<Textwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("amina",style: TextStyle(fontSize: 50,color: Colors.green,fontWeight: FontWeight.bold,letterSpacing: 10,),)),
    );
  }
}

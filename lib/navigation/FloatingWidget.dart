import 'package:flutter/material.dart';

class Floatingwidget extends StatefulWidget {
  const Floatingwidget({super.key});

  @override
  State<Floatingwidget> createState() => _FloatingwidgetState();
}

class _FloatingwidgetState extends State<Floatingwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(floatingActionButton: FloatingActionButton(onPressed: (){

    }),);
  }
}

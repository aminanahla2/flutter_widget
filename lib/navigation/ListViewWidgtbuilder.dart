import 'package:flutter/material.dart';

class Listviewwidgtbuilder extends StatefulWidget {
  const Listviewwidgtbuilder({super.key});

  @override
  State<Listviewwidgtbuilder> createState() => _ListviewwidgtbuilderState();
}

class _ListviewwidgtbuilderState extends State<Listviewwidgtbuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 10,width: double.infinity,color: Colors.green,

            ),
          );
        },
      ),
    );
  }
}

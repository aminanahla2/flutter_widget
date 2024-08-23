import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 600,
            color: Colors.pink,
          ),
          Container(
            height: 100,
            width: 500,
            color: Colors.brown,
          ),
          Container(
            height: 100,
            width: 400,
            color: Colors.yellow,
          ),
          Container(
            height: 100,
              width: 300,
            color: Colors.green
          ),
        ],
      ),
    );
  }
}

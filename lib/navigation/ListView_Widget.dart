import 'package:flutter/material.dart';

class ListviewWidget extends StatefulWidget {
  const ListviewWidget({super.key});

  @override
  State<ListviewWidget> createState() => _ListviewWidgetState();
}

class _ListviewWidgetState extends State<ListviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container
            (height: 300, width: 200, color: Colors.yellow),
          Container
            (height: 400, width: 200, color: Colors.green),
          Container
            (height: 400, width: 200, color: Colors.red),
        ],
      ),
    );
  }
}

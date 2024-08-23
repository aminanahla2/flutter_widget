import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widgetcontainer extends StatefulWidget {
  const Widgetcontainer({super.key});

  @override
  State<Widgetcontainer> createState() => _WidgetcontainerState();
}

class _WidgetcontainerState extends State<Widgetcontainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
         child:  Center(
              child: Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(color: Colors.brown),
            child: Center(
                child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(color: Colors.orange),
              child: Center(
                  child:  Container(
                height: 200,
                width: 200,
                color: Colors.orange[100],
              )),
            )),
          )),
          height: 500,
          width: 500,
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ),
    );
  }
}

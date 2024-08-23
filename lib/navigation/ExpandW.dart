import 'package:flutter/material.dart';

class Expandw extends StatefulWidget {
  const Expandw({super.key});

  @override
  State<Expandw> createState() => _ExpandwState();
}

class _ExpandwState extends State<Expandw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex: 2,
            child: Container(

              width: 200,
              decoration: BoxDecoration(color: Colors.yellowAccent),
            ),
          ),
          Expanded(flex: 2,
            child: Container(child: Row(
              children: [
                CircleAvatar(radius: 50,backgroundColor: Colors.pink,),
              ],
            ),

              width: 200,
              decoration: BoxDecoration(color: Colors.green),
            ),
          )
        ],
      ),
    );
  }
}

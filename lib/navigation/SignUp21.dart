import 'package:flutter/material.dart';

class Signup21 extends StatefulWidget {
  const Signup21({super.key});

  @override
  State<Signup21> createState() => _Signup21State();
}

class _Signup21State extends State<Signup21> {
  get appBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          }, icon: Icon(Icons.arrow_back_ios),
        ),
      ),body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
          Container(height: 500,
          width: 400,
            decoration: BoxDecoration(color: Colors.yellow,borderRadius: BorderRadius.circular(500),image: DecorationImage(image: AssetImage("assets/hnyman-removebg-preview.png"))),
          )
        ],),
      ),
    );
  }
}

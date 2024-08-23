import 'package:flutter/material.dart';

class Chessboard extends StatefulWidget {
  const Chessboard({super.key});

  @override
  State<Chessboard> createState() => _ChessboardState();
}

class _ChessboardState extends State<Chessboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.white,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
            ],
          )
        ],
      ),
    );
  }
}

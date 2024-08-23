import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)),child: Center(child: Text('PURPLE',style: TextStyle(fontSize: 40),
                )),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [ Container(
            height: 200,
            width: 240,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)),child: Center(child: Text('GREEN',style: TextStyle(fontSize: 40)
              ,),),
            ),
              SizedBox(width: 10,),
              Column(
              children: [ Row(
                children: [
                  Container(
                    height: 50,
                    width: 250, decoration: BoxDecoration(color: Colors.blue[200],borderRadius: BorderRadius.circular(10)),child: Center(child: Text('BLUE',style: TextStyle(fontSize: 40),),)
                    
                  )
                ],
              ),SizedBox(height: 10,),
                Container(
                  height: 145,
                  width: 250,
                  decoration: BoxDecoration( color: Colors.orange[500],borderRadius: BorderRadius.circular(10)),child: Center(child: Text('ORANGE',style: TextStyle(fontSize: 40),),)
                 
                )
              ],
            )

            ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 500,
                decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(10)),child: Center(child: Text('GREEN',style: TextStyle(fontSize: 40),),)

              )
            ],
          )
        ],
      ),

    );
  }
}

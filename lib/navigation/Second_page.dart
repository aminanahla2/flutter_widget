import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Third_page.dart';

class Second_page extends StatefulWidget {
  const Second_page({super.key});

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[50],
        title: Text(
          "Second page",
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios)),

      ),
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  " second page",
                  style: TextStyle(fontSize: 20),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return ThirdPage();
                },
              ));
            },
            child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.vectorstock.com/i/1000v/65/73/hand-click-button-vector-24346573.avif'),fit: BoxFit.fill))),
          )
        ],
      ),
    );
  }
}

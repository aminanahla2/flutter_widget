import 'package:flutter/material.dart';

import 'Second_page.dart';

class First_page extends StatefulWidget {
  const First_page({super.key});

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.green[50],title: Text("First page"),centerTitle: true,),backgroundColor: Colors.yellow[100],
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(
          child: ElevatedButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Second_page();
          },));

          }, child: Text("go to second page",style: TextStyle(fontSize: 20),)),
        )],
      ),
    );
  }
}

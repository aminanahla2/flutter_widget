import 'package:flutter/material.dart';

class Listviweseprator extends StatefulWidget {
  const Listviweseprator({super.key});

  @override
  State<Listviweseprator> createState() => _ListviwesepratorState();
}

class _ListviwesepratorState extends State<Listviweseprator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index) {
        return Text("hello");

      }, separatorBuilder: (context, index) {
        return Container(height: 20,width: 30,color: Colors.black,);
      }, itemCount: 10),
    );
  }
}

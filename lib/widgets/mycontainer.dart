import 'package:flutter/material.dart';

class Mycontainer extends StatefulWidget {
  const Mycontainer({super.key});

  @override
  State<Mycontainer> createState() => _MycontainerState();
}

class _MycontainerState extends State<Mycontainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(200)),
          child: Center(
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(200)),
              child: Center(
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(200)),
                  child: Center(
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(200)),
    child: Center(child: Container( height: 50,
    width: 50,
    decoration: BoxDecoration(
    color: Colors.yellow, borderRadius: BorderRadius.circular(200)),child: Center(child: Container( height: 30,
    width: 30,
    decoration: BoxDecoration(
    color: Colors.red[200], borderRadius: BorderRadius.circular(200)),),),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),),);
  }
}

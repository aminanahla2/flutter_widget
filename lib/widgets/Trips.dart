
import 'package:flutter/material.dart';

class Trips extends StatefulWidget {
  const Trips({super.key});

  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(height: 70,),
            Row(
                children: [
                  SizedBox(width: 10,),
                  Text(
                    "Trips",
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w900),
                  ),]),
            Row(
                children: [
                  SizedBox(width: 10,),

                  Text(
                    "Mountain",
                    style: TextStyle(fontSize: 45,color: Colors.grey.shade600),
                  ),]),
            SizedBox(height: 20,),
            Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Mountain hikes give you an\nincredible sense of freedom along\nwith endurance tests",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  )
                ]
            ),

            Row(
              children: [SizedBox(width: 20,),
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/download.png"))
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 471,
                  width: 410,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/Mountain.jpg"),fit: BoxFit.fill)),
                )
              ],
            ),
          ],
        )

    );
  }
}
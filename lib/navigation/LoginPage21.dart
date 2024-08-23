import 'package:amina_flutter/navigation/Loginpage.dart';
import 'package:flutter/material.dart';

class Loginpage21 extends StatefulWidget {
  const Loginpage21({super.key});

  @override
  State<Loginpage21> createState() => _Loginpage21State();
}

class _Loginpage21State extends State<Loginpage21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            "Helloo Welcome!!!",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 40,fontStyle: FontStyle.italic),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadius.circular(500),
                          image: DecorationImage(
                              image: AssetImage("assets/hnyman-removebg-preview.png"),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

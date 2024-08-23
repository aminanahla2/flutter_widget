import 'package:amina_flutter/CofeeShopWidget/SecondPgCofee.dart';
import 'package:flutter/material.dart';

class Firstpgcofee extends StatefulWidget {
  const Firstpgcofee({super.key});

  @override
  State<Firstpgcofee> createState() => _FirstpgcofeeState();
}

class _FirstpgcofeeState extends State<Firstpgcofee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.black,
            child: Image(
              image: AssetImage("assets/image 3.png"),fit: BoxFit.fill,
            ),
          ),
          Center(
            child: Text(
              "Coffee So Good,  \nYour Taste Buds \n     Will Love It.",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Text(
            "The best grain ,The finest Roast,The\n                   powerful flavour",
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell( onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPgCofee();
            },));
          },
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Container(height: 30,width: 30,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/google_pic.png"))),
                  ),
                  Text(
                    " Continue with Google",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

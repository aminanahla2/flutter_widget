import 'package:amina_flutter/navigation/Loginpage.dart';
import 'package:amina_flutter/navigation/SignUp.dart';
import 'package:flutter/material.dart';

class Myfirstpage extends StatefulWidget {
  const Myfirstpage({super.key});

  @override
  State<Myfirstpage> createState() => _MyfirstpageState();
}

class _MyfirstpageState extends State<Myfirstpage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Center(
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  borderRadius: BorderRadius.circular(400),
                  image: DecorationImage(
                      image:
                          AssetImage("assets/hnyman-removebg-preview.png"))),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,bottom: 40),
            child: Row(
              children: [
                Text(
                  "Build Awesome Apps",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Text(
            "Let's put your Creativity on the\n       development highway.",
            style: TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 40),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Loginpage();
                      },
                    ));
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Signup();
                      },
                    ));
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.black, width: 2)),
                    child: Center(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

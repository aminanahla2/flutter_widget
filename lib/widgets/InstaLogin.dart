import 'dart:developer';

import 'package:flutter/material.dart';

class Instalogin extends StatefulWidget {
  const Instalogin({super.key});

  @override
  State<Instalogin> createState() => _InstaloginState();
}

class _InstaloginState extends State<Instalogin> {
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Form(key: formkey,
        child: Column(
          children: [
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Instagram",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(validator: (value){
                if(value!.isEmpty);
                return "invalid errors";
              },
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person),
                    hintText: ("Phone number,email or username"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: ("password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (formkey.currentState!.validate());
                  {
                    print("invalid error");
                  }
                },
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Forgot your login details?Get help logging in",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            Text("_________________OR_________________",
                style: TextStyle(fontSize: 18)),
            SizedBox(
              height: 20,
            ),
            Text(
              "Log in with Facebook",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}

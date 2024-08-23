import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminAddpage extends StatefulWidget {
  const AdminAddpage({super.key});

  @override
  State<AdminAddpage> createState() => _AdminAddpageState();
}

class _AdminAddpageState extends State<AdminAddpage> {
  final formkey = GlobalKey<FormState>(); //for validations
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[50],
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        backgroundColor: Colors.blue[50],
        body: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 180,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Enter Matter",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Invalid credentials";
                            }
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: ("Matter"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Enter Content",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) ;
                            {
                              return "Invalid password";
                            }
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.remove_red_eye),
                              hintText: (" Content"),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text("Submit",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20))),
                      )
                    ],
                  )
                ],
              ),
            ),
        ),
        );
    }
}
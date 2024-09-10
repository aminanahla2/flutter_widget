import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../AdminPage/NavigtnAdmin.dart';
import 'Admin_Home.dart';
import 'Admin_Studentdetail.dart';

class Admin_Login extends StatefulWidget {
  const Admin_Login({super.key});

  @override
  State<Admin_Login> createState() => _Admin_LoginState();
}

class _Admin_LoginState extends State<Admin_Login> {
  final formkey = GlobalKey<FormState>(); //for validations
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 180.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 155),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.blueAccent),
                  )
                ],
              ),
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Invalid credentials";
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: ("Username "),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) ;
                        {
                          return "Invalid password";
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: (" Password"),
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
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 60.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: InkWell(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return Admin_home();
                            },));
                          },
                            child: Text("LOGIN",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20)),
                          )),
                    ),
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

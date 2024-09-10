import 'package:amina_flutter/Finearts_Miniprjct/Admin_Login.dart';
import 'package:flutter/material.dart';

class AdminSplash extends StatefulWidget {
  const AdminSplash({super.key});

  @override
  State<AdminSplash> createState() => _AdminSplashState();
}

class _AdminSplashState extends State<AdminSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Row(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 155),
              child: InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Admin_Login();
                },));
              },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage("assets/stage.jpeg"))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:amina_flutter/navigation/Google.dart';
import 'package:amina_flutter/navigation/Loginpage.dart';
import 'package:amina_flutter/navigation/SignUp21.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(80),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.dribbble.com/users/2071065/screenshots/7170969/media/afec6e62b44b75d4238b9adf491aedb7.png?resize=1000x750&vertical=center")),
                      )),
                ],
              ),
            ),
            Text(
              " Get On Board!                        ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
            ),
            Text(
              "Create Your Profile to start your journey",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: ("Full Name"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: ("Email"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.numbers),
                  hintText: ("Phone no"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  hintText: ("Password"),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(height: 50,width: 300,decoration: BoxDecoration(color: Colors.black),
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Signup21();
                  },));
                },
                  child: Center(
                    child: Text(
                      "       SIGN UP      ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              "OR",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ), Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 40),
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        )),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('assets/google_pic.png'),
                                    fit: BoxFit.fill)),
                          ),
                        ),
                        Text("Sign up With Google")
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't you have an account?",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Loginpage();
                    },));
                  },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

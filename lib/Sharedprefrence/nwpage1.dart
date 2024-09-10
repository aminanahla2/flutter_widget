import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Newpg2.dart';

class Newpg1 extends StatefulWidget {
  const Newpg1({super.key});

  @override
  State<Newpg1> createState() => _Newpg1State();
}

class _Newpg1State extends State<Newpg1> {
  var name = TextEditingController();
  var place = TextEditingController();
  Add_Data_Shrdprfnc() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    data.setString("name", name.text);
    data.setString("place", place.text);
    print("succesfully added!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: 100),
            TextField(
              controller: name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  hintText: 'Name'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: place,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                  hintText: 'place'),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Add_Data_Shrdprfnc();
              },
              child: Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(color: Color.fromRGBO(32, 69, 99, 1)),
                child: Center(
                    child: Text(
                  'Submit',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Newpg2();
                  },
                ));
              },
              child: Container(
                width: 400,
                height: 50,
                decoration: BoxDecoration(color: Color.fromRGBO(32, 69, 99, 1)),
                child: Center(
                    child: Text(
                  'navigate to 2nd page',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

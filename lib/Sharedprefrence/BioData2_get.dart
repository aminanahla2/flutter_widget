import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'BioData2_get.dart';

enum Gender { male, female }

class BioData2_get extends StatefulWidget {
  const BioData2_get({super.key});

  @override
  State<BioData2_get> createState() => _BioData2_getState();
}

class _BioData2_getState extends State<BioData2_get> {
  Gender? _selectedGender = Gender.male;
  void initstate() {
    //TODO: implement initstate
    Get_Data();
  }
  var name;
  var Age;
  var address;
  var Email;

  Get_Data() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    setState(() {
      name = data.getString("name");
      Age = data.getString("Age");
      address = data.getString("address");
      Email = data.getString("Email");
      print("success");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                    child: Text(
                  'BioData',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),hintText: '$name'
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Age',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(controller: Age,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),hintText: '$Age'
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(controller: address,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),hintText: '$address'
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(controller: Email,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),hintText: '$Email'
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          "Gender",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<Gender>(
                        value: Gender.male,
                        groupValue: _selectedGender,
                        onChanged: (Gender? value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                      Text('Male'),
                      Radio<Gender>(
                        value: Gender.female,
                        groupValue: _selectedGender,
                        onChanged: (Gender? value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                      Text('Female'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

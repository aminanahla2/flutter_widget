import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'BioData2_get.dart';

enum Gender { male, female }

class BioData_sp extends StatefulWidget {
  const BioData_sp({super.key});

  @override
  State<BioData_sp> createState() => _BioData_spState();
}

class _BioData_spState extends State<BioData_sp> {
  Gender? _selectedGender = Gender.male;
  var name = TextEditingController();
  var Age = TextEditingController();
  var address = TextEditingController();
  var Email = TextEditingController();

  Add_Data_sp() async {
    SharedPreferences data = await SharedPreferences.getInstance();
    data.setString("name", name.text);
    data.setString("Age", Age.text);
    data.setString("address", address.text);
    data.setString("Email", Email.text);
    print("succesfully");
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
              SizedBox(height: 20),
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
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero),hintText: 'Name'
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
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
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero),hintText: 'Age'
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
                        'address',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero),hintText: 'address'
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
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.zero),hintText: 'Email'
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:15),
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
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Add_Data_sp();
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return BioData2_get();
                              },
                            ));
                          },
                          child: Container(
                            height: 50,
                            width: 310,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Submit',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                          ),
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

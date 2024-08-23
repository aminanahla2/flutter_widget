import 'package:flutter/material.dart';

class Togglewidget extends StatefulWidget {
  const Togglewidget({super.key});

  @override
  State<Togglewidget> createState() => _TogglewidgetState();
}

class _TogglewidgetState extends State<Togglewidget> {
  List<bool> isSelected = [false, true, false,false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green.withOpacity(0.5),
          child: ToggleButtons(
            isSelected: isSelected,
            selectedColor: Colors.white,
            color: Colors.red,
            fillColor: Colors.lightBlue,
            renderBorder: false,
            //splashColor: Colors.red,
            highlightColor: Colors.orange,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "For Rent",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                "For sale",
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "solds",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "aaa",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
            onPressed: (int newIndex) {
              setState(() {
                for (int index = 0; index < isSelected.length; index++) {
                  if (index == newIndex) {
                    isSelected[index] = true;
                    print(isSelected);
                  } else {
                    isSelected[index] = false;
                  }
                }
              });
            },
          ),
        ),
      ),
    );
  }
}

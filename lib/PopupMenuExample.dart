import 'package:flutter/material.dart';

class PopupMenuExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Example'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              // Handle the selected value
              print('Selected: $value');
              // You can also show a Snackbar or perform any action
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                PopupMenuItem<String>(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
                PopupMenuItem<String>(
                  value: 'Option 3',
                  child: Text('Option 3'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Tap on the menu icon in the AppBar to see options.'),
      ),
    );
  }
}
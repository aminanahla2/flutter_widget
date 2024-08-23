import 'package:flutter/material.dart';

class AlertDialogExample extends StatelessWidget {
  void _showAlertDialog(BuildContext context) {
    // Set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alert Dialog"),
      content: SizedBox(
        height: 100,
        child: Column(
          children: [
            Text("po"),
            Text("annachi"),
            Text("pinne va"),
          ],
        ),
      ),
      actions: [
        TextButton(
          child: Text("OK"),
          onPressed: () {
            print("pressed");
            Navigator.of(context).pop(); // Close the dialog
          },
        ),
      ],
    );

    // Show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAlertDialog(context),
          child: Text('Show Alert Dialog'),
        ),
      ),
    );
  }
  // or here we can put the functions
}
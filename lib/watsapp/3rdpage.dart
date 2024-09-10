import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFxK7VVB3j1A2jclN33uRaW-iV-OCmgEVLVw&s'),
          ),
          title: Text('Status $index'),
          subtitle: Text('Today, 12:00 PM'),
        );
      },
    );
  }
}

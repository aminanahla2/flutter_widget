import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHquXrBtUVqN7KTEf25DrCWuvSeR87cHfJTQ&s'),
          ),
          title: Text('Call $index'),
          subtitle: Text('Yesterday, 12:00 PM'),
          trailing: Icon(Icons.call),
        );
      },
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX7JLC1n0FfbdWOGqFiwi_GSReUuZgB_B-kA&s'),
          ),
          title: Text('Chat $index'),
          subtitle: Text('Last message...'),
          trailing: Text('12:00 PM'),
        );
      },
    );
  }
}

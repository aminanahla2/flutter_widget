import 'package:flutter/material.dart';

import '3rdpage.dart';
import 'Fifthpg.dart';
import 'Secndpgcht.dart';
import 'fourthpg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen1(),
    );
  }
}

class HomeScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
              Tab(icon: Icon(Icons.settings)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
            SettingsScreen(),
          ],
        ),
      ),
    );
  }
}

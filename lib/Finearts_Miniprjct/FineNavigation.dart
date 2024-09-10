import 'package:amina_flutter/Finearts_Miniprjct/Admin_Studentdetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Admin_Home.dart';


class FineNavigation extends StatefulWidget {
  FineNavigation({Key? key}) : super(key: key);

  @override
  _FineNavigationState createState() => _FineNavigationState();
}

class _FineNavigationState extends State<FineNavigation> {
  int _selectedIndex = 0;

  static  List<dynamic> _widgetOptions = [
    Admin_home(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Home',
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_balance_wallet_rounded,
                  size: 30,
                ),
                label: 'Payment',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                  size: 32,
                ),
                label: 'Notification',
                backgroundColor: Colors.white),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.blue),
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
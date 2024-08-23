import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Carquickpage3 extends StatefulWidget {
  const Carquickpage3({super.key});

  @override
  State<Carquickpage3> createState() => _Carquickpage3State();
}

class _Carquickpage3State extends State<Carquickpage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 25,
                    )),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Inbox",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 35),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Container(
                      height: 30,
                      width: 60,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(CupertinoIcons.search)
                      ),
                    ),
                    hintText: 'Search',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none)),
              ),
            ),
            Expanded(child: ListView.builder(itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Name"),
                  subtitle: Text("Last Message"),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/stephen.jpeg"),
                    radius: 30,
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}

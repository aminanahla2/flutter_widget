import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationPage1 extends StatefulWidget {
  const NavigationPage1({super.key});

  @override
  State<NavigationPage1> createState() => _NavigationPage1State();
}

class _NavigationPage1State extends State<NavigationPage1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Scaffold(
        backgroundColor: Colors.yellow[50],
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 5,
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/smile.jpeg"),
                    radius: 35,
                  ),
                  Text(
                    "  Hi!,kira!",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Icon(
                      Icons.notifications_active,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "  Task For Today:",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                  ),
                  Text(
                    " 5 Available",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Container(
                      height: 40,
                      width: 330,
                      color: Colors.white,
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.only(left: 10, top: 10),
                            hintText: ("Search")),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Last Connections",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(backgroundImage: AssetImage("assets/boy.jpeg"),
                    radius: 30,
                  ),
                  CircleAvatar(backgroundImage: AssetImage("assets/boy2.jpeg"),
                    radius: 30,
                  ),
                  CircleAvatar(backgroundImage: AssetImage("assets/girl1.jpeg"),
                    radius: 30,
                  ),
                  CircleAvatar(backgroundImage: AssetImage("assets/girl2.jpeg"),
                    radius: 30,
                  ),
                  CircleAvatar(backgroundColor: Colors.grey,
                    radius: 30,
                    child: Text("+5"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 325,
                  width: 390,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              " Active Projects",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 85),
                              child: Text(
                                "See all",
                                style: TextStyle(fontSize: 20),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 40,),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Text("Numero 10"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 200),
                                      child: Text(' 4h'),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Blog And Social Posts",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      size: 15,
                                    ),
                                    Text(" DeadLine is today"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          height: 105,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Text("Grace aroma"),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 195),
                                      child: Text('7d'),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("New Capmain Review",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      size: 15,
                                    ),
                                    Text("DeadLine Today"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          height: 105,
                          width: 500,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border:
                                  Border.all(color: Colors.black, width: 1)),
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

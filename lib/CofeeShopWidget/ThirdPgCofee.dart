import 'package:flutter/material.dart';

class Thirdpgcofee extends StatefulWidget {
  const Thirdpgcofee({super.key});

  @override
  State<Thirdpgcofee> createState() => _ThirdpgcofeeState();
}

class _ThirdpgcofeeState extends State<Thirdpgcofee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 15),
        child: Column(
          children: [
            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage("assets/Rectangle 1706.png"),
                      fit: BoxFit.fill)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Cuppocino",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 5),
                  child: Text(
                    ("with chocolate"),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.star,
                    color: Colors.yellow[400],
                  ),
                ),
                Text(
                  "4.8",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "(230)",
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ),
            Container(
              height: 200,
              width: 400,
              child: Row(
                children: [
                  SizedBox(height: 200, child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Description",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  )
                  ),Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 500,bottom: 50),
                        child: Text("A cuppicino is an approximately 150ml(5\noz)beverage ,with 25ml of espresso coffee and\n 85ml of fresh milk the fo.."),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Biodata_details extends StatefulWidget {
  const Biodata_details({super.key});

  @override
  State<Biodata_details> createState() => _Biodata_detailsState();
}

class _Biodata_detailsState extends State<Biodata_details> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Get_data_sp();
  }
  var Name;
  var Place;
  var Email;
  var Qualification;
  var Gender;
  Future<void> Get_data_sp()async{
    SharedPreferences data = await SharedPreferences.getInstance();
    setState(() {
      Name = data.getString("Name");
      Place = data.getString("Place");
      Email = data.getString("Email");
      Qualification = data.getString("Qualification");
      Gender = data.getString("Gender");
      print("Get Successful//////////////////");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Center(
                child: Text(
                  'Biodata',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: Colors.black),
                )),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Name : $Name",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,
                          color: Colors.black),),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Text("Place : $Place",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,
                          color: Colors.black),),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Text("Email : $Email",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,
                          color: Colors.black),),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Text("Qualification : $Qualification",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,
                          color: Colors.black),),
                    ],
                  ),
                  SizedBox(height: 40,),
                  Row(
                    children: [
                      Text("Gender : $Gender",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,
                          color: Colors.black),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class Lotti extends StatefulWidget {
  const Lotti({super.key});

  @override
  State<Lotti> createState() => _LottiState();
}

class _LottiState extends State<Lotti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(child: Lottie.asset("assets/Animation - 1724736030288.json"),
        height: 900.h,
        width: 500.w,
        color: Colors.yellow,
      )),
    );
  }
}

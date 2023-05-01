import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'main.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((value) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return SayariApp();
    },));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        Expanded(flex: 2,
          child: Container(
            child: Lottie.asset("lottie/112180-paper-notebook-writing-animation.json"),
          ),
        ),
        Expanded(flex: 1,
          child: Container(
            margin: EdgeInsets.all(20),
            child: Text("Keep Waiting Your Shayri..",style: TextStyle(fontWeight: FontWeight.bold),)
          ),
        ),
        Expanded(flex: 1,
          child: Container(
            margin: EdgeInsets.all(20),
            child: Lottie.asset("lottie/98432-loading.json"),
          ),
        ),
      ]),
    );
  }
}

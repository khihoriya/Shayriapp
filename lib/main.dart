import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sayari/second_page.dart';
import 'package:sayari/splash.dart';

void main(){
  runApp(MaterialApp(
    home: splash(),
    debugShowCheckedModeBanner: false,
  ));
}

class SayariApp extends StatefulWidget {
  const SayariApp({Key? key}) : super(key: key);

  @override
  State<SayariApp> createState() => _SayariAppState();
}

class _SayariAppState extends State<SayariApp> {

  List categary = ["Wishes Shayari","Best Friend Shayari","Funny Shayari",
                    "God Shayari","Motivational Shayari","Life Shayari","Love Shayari","Holi Shayari",
                      "Political Shayari"];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    permissione_method();
  }

  Future<void> permissione_method() async {
    var status = await Permission.notification.status;
    var status1 = await Permission.storage.status;
    if (status.isDenied || status1.isDenied) {
      await [
        Permission.notification,
        Permission.storage,
      ].request();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text("SHAYARI APP",style: TextStyle(fontFamily: 'Oswald',fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: categary.length,
          itemBuilder: (context,index) {
           return Card(
             child: Container(
               margin: EdgeInsets.all(10),
               height: 80,
               decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 border: Border.all(width: 2,color: Colors.black),
                 borderRadius: BorderRadius.circular(10),
                 boxShadow: [
                   BoxShadow(
                     blurRadius: 8.0,
                     spreadRadius: 0,
                   )
                 ],
               ),
               child: ListTile(
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                     return SecondPage(categary,index);
                   }));
                 },
                 title: Text(categary[index],
                   style: TextStyle(fontFamily: 'Oswald',fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),textAlign: TextAlign.left,),
                 leading: Container(
                   margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                   height: 90,
                   width: 70,
                   child: Image.asset(
                     'images/a${index + 1}.jpg',fit: BoxFit.cover,),
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                   ),
                 ),
               ),
             ),
           );
          },
      ),
    );
  }
}



import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sayari/fourthPage.dart';
import 'package:share_plus/share_plus.dart';

class ThirdPage extends StatefulWidget {
  List temp;
  int index;

  ThirdPage(this.temp,this.index);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  PageController pageController = PageController(initialPage: 1);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          "SHAYARI APP",
          style: TextStyle(fontFamily: 'Oswald',
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body:   Column(
          children: [
            //1
            Expanded(
                child:  PageView.builder(scrollDirection: Axis.horizontal,itemCount: widget.temp.length, controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      pageController = widget.temp[widget.index];
                    });
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(40),
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.orangeAccent,Colors.white]),
                        boxShadow: [BoxShadow(color: Colors.red,blurRadius: 20)],
                        // color: Colors.orangeAccent,
                        border: Border.all(width: 15, color: Colors.blueGrey),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          '${widget.temp[widget.index]}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },)
            ),
            //2
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: () {
                    FlutterClipboard.copy('${widget.temp[widget.index]}').then((value) {
                      Fluttertoast.showToast(
                          msg: "Copied",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black45,
                          textColor: Colors.white,
                          fontSize: 15.0
                      );
                    });
                  }, icon: Icon(Icons.copy)),

                  IconButton(onPressed: () {
                    setState(() {
                      if( 0 < widget.index){
                        widget.index--;
                      }else{
                        Fluttertoast.showToast(
                            msg: "Dont Back",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black45,
                            textColor: Colors.white,
                            fontSize: 15.0
                        );
                      }
                    });
                  }, icon: Icon(Icons.arrow_back_ios_outlined)),

                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return FourthPage(widget.temp,widget.index);
                    }));
                  }, icon: Icon(Icons.edit)),

                  IconButton(onPressed: () {
                    setState(() {
                      if(widget.temp.length -1 > widget.index){
                        widget.index++;
                      }else {
                        Fluttertoast.showToast(
                            msg: "End",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.black45,
                            textColor: Colors.white,
                            fontSize: 15.0
                        );
                      }
                    });
                  }, icon: Icon(Icons.arrow_forward_ios_outlined)),

                  IconButton(onPressed: () {
                    Share.share('${widget.temp[widget.index]}');
                  }, icon: Icon(Icons.share)),
                ],
              ),
            ),
          ],
        )
    );
  }
}

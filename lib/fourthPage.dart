import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:share_plus/share_plus.dart';

class FourthPage extends StatefulWidget {
  List temp;
  int index;

  FourthPage(this.temp, this.index);

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  List Mycolor = [
    Colors.red,
    Colors.blue,
    Colors.black,
    Colors.redAccent,
    Colors.blueGrey,
    Colors.lightBlue,
    Colors.brown,
    Colors.tealAccent,
    Colors.teal,
    Colors.pinkAccent,
    Colors.pink,
    Colors.yellow,
    Colors.green,
    Colors.cyan,
    Colors.cyanAccent,
    Colors.amberAccent,
    Colors.purpleAccent,
    Colors.purple,
    Colors.orangeAccent,
    Colors.orange,
    Colors.indigo,
    Colors.greenAccent
  ];

  List Emoji = [
    '😀 😃 😄 😁 😆 😅',
    '😂 🤣 ☺ 😇 🙂 🙃',
    '😉 😌 😍 🥰 😘',
    '😗 😙 😚 😋 😛 😝',
    '😜 🤪 🤨 😋 😛 😝',
    '🤩 🥳 😏 😒 😞 😔',
    '😟 😕 🙁 ☹',
    '😣 😖 😫 😩 🥺',
    '😢 😭 😤 😠 😡',
    '🤬 🤯 😳 🥵',
    '🥶 😱 😨 😰 😥',
    '😓 🤗 🤔 🤭 🤫',
    '🤥 😶 😐 😑',
    '😬 🙄 😯 😦 😧',
    '😮 😲 🥱 😴',
    '🤤 😪 😵 🤐 🥴',
    '🤢 🤮 🤧 😷 🤒',
    '🤕 🤑 🤠 😈 👿',
    '👻 💀 ☠️ 👽 👾 🤖',
    '🎃 😺 😸 😹 😻',
    '💁‍♀️ 💁 💁‍♂️ 🙅‍♀️ 🙅',
    '🙅‍♂️ 🙆‍♀️ 🙆 🙆‍♂️ 🙋‍♀️',
    '🧣 🧤 🧥 🧦 👗',
    '🧑🏻 👨🏻 👩🏻‍🦱 🧑🏻‍🦱 ',
    '👱🏻‍♀️ 👱🏻 👱🏻‍♂️ 👩🏻‍🦳',
    '🧑🏻‍🎤 👨🏻‍🎤 👩🏻‍🏫 ',
    '🐶 🐱 🐭 🐹 🐰',
    '🦊 🐻 🐼 🐻‍❄️',
    '🐨 🐯 🦁 🐮',
    '🦆 🦅 🦉 🦇',
    '🦈 🐊 🐅 🐆',
    '🦁 🦁 🦁 🦁 🦁',
    '🌏 🌏 🌏 🌏 🌏',
    '🥇 🥇 🥇 🥇 🥇 ',
    '🥈 🥈 🥈 🥈 🥈 ',
    '🥉 🥉 🥉 🥉 🥉 ',
    ' 🏅  🏅  🏅  🏅  🏅 ',
    '🏛 ⛪️ 🕌 🕍 🛕',
    '❤ 🧡 💛 💚',
    '💔 ❣️ 💕 💞',
    '👰🏾‍♂️ 👰🏿‍♂️',
    '✪ ✪ ✪ ✪ ✪',
    '🎦 🎦 🎦 🎦 🎦'
  ];

  List Font = [
    'Oswald',
    'BebasNeue',
    'Akshar',
    'SquaraPeg',
    'Lobster',
    'MySoul',
    'Updock',
    'Whisper',
    'MsMadi',
  ];

  Color currentbackgroundcolor = Colors.blueGrey;
  Color currenttextcolor = Colors.black;
  String currentemoji = '😀 😃 😄 😁 😆 😅';
  double currentslider = 20;
  String currentFont = 'Oswald';

  GlobalKey globalKey = GlobalKey();

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary = globalKey.currentContext!
          .findRenderObject() as RenderRepaintBoundary?;
      ui.Image image = await boundary!.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      print(pngBytes);
      print(bs64);
      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);
      return Future.value();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createFolder();
  }

  String fo_path = '';

  _createFolder() async {
    final folderName = "Shayari 2022";
    final path = Directory("storage/emulated/0/DCIM/$folderName");
    if ((await path.exists())) {
      // TODO:
      print("exist");
    } else {
      // TODO:
      print("not exist");
      path.create();
    }
    fo_path = path.path;
    setState(() {});
  }

  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Editing Page",
          style: TextStyle(
              fontFamily: 'Oswald',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                //1
                RepaintBoundary(
                  key: globalKey,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                        color: currentbackgroundcolor,
                        border: Border.all(width: 7, color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10.0,
                            spreadRadius: 0.0,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        "$currentemoji\n${widget.temp[widget.index]}\n$currentemoji",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontFamily: currentFont,
                            fontSize: currentslider,
                            color: currenttextcolor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                //2
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 7, 0, 9),
                            width: 60,
                            height: 40,
                            color: Colors.black45,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  currentbackgroundcolor =
                                      Mycolor[Random().nextInt(Mycolor.length)];
                                });
                              },
                              icon: Icon(Icons.refresh),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 7, 0, 9),
                            width: 60,
                            height: 40,
                            color: Colors.black45,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  currentemoji =
                                      Emoji[Random().nextInt(Emoji.length)];
                                });
                              },
                              icon: Icon(Icons.refresh),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  builder: (context) {
                                    return Container(

                                      height: 200,
                                      width: 200,
                                      color: Colors.black54,
                                      child: GridView.builder(
                                          itemCount: Mycolor.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                setState(() {
                                                  Navigator.pop(context);
                                                  currentbackgroundcolor =
                                                      Mycolor[index];
                                                });
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Mycolor[index],
                                                  borderRadius:
                                                      BorderRadius.circular(2),
                                                  border: Border.all(
                                                      width: 2,
                                                      color: Colors.black),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 5.0,
                                                      spreadRadius: 0.0,
                                                    )
                                                  ],
                                                ),
                                                margin: EdgeInsets.all(10),
                                              ),
                                            );
                                          },
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 5)),
                                    );
                                  },
                                  context: context);
                            },
                            child: Container(
                              width: 70,
                              child: Text(
                                'Back Color',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  builder: (context) {
                                    return Container(
                                      height: 200,
                                      width: 200,
                                      color: Colors.black54,
                                      child: GridView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: Mycolor.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                setState(() {
                                                  Navigator.pop(context);
                                                  currenttextcolor =
                                                      Mycolor[index];
                                                });
                                              },
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Mycolor[index],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors.black),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 5.0,
                                                        spreadRadius: 0.0,
                                                      )
                                                    ],
                                                  ),
                                                  margin: EdgeInsets.all(10)),
                                            );
                                          },
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 3)),
                                    );
                                  },
                                  context: context);
                            },
                            child: Container(
                              width: 70,
                              child: Text(
                                'Text Color',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              _capturePng().then((value) async {
                                String imagename =
                                    "Image${Random().nextInt(500)}.jpg";
                                String imagepath = '$fo_path/$imagename';
                                File file = File(imagepath);
                                file.writeAsBytes(value);
                                await file.create();
                                Share.shareFiles(['${file.path}'],
                                    text:
                                        'https://srstatus.com/english-shayari-on-life/');
                              });
                            },
                            child: Container(
                              width: 70,
                              child: Text(
                                'Share',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  builder: (context) {
                                    return Container(
                                      height: 200,
                                      width: 200,
                                      color: Colors.black54,
                                      child: ListView.builder(
                                        itemCount: Font.length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                Navigator.pop(context);
                                                currentFont = Font[index];
                                              });
                                            },
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              margin: EdgeInsets.all(6),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    width: 2,
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 9.0,
                                                    spreadRadius: 0.0,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  Font[index],
                                                  style:
                                                      TextStyle(fontSize: 22),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  context: context);
                            },
                            child: Container(
                              width: 70,
                              child: Text(
                                'Font',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  builder: (context) {
                                    return Container(
                                      height: 200,
                                      width: 200,
                                      color: Colors.black54,
                                      child: ListView.builder(
                                        itemCount: Emoji.length,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                Navigator.pop(context);
                                                currentemoji = Emoji[index];
                                              });
                                            },
                                            child: Container(
                                              height: 50,
                                              margin: EdgeInsets.all(6),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    width: 2,
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 9.0,
                                                    spreadRadius: 0.0,
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                  Emoji[index],
                                                  style:
                                                      TextStyle(fontSize: 22),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                  context: context);
                            },
                            child: Container(
                              width: 70,
                              child: Text(
                                'Emoji',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              showMaterialModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                builder: (context) {
                                  return StatefulBuilder(
                                    key: null,
                                    builder: (context, setState1) {
                                      return Container(
                                        height: 200,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            color: Colors.black54,
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20)),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 9,
                                                spreadRadius: 0,
                                              )
                                            ]),
                                        child: Slider(
                                            min: 5,
                                            max: 50,
                                            onChanged: (value) {
                                              setState(() {
                                                setState1(() {
                                                  currentslider = value;
                                                });
                                              });
                                            },
                                            value: currentslider,
                                            activeColor: Colors.cyanAccent),
                                      );
                                    },
                                  );
                                },
                                context: context,
                              );
                            },
                            child: Container(
                              width: 70,
                              child: Text(
                                'Text Size',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}

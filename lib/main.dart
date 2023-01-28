import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  bool tap = false;
  bool tep = false;
  bool tip = false;
  bool top = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('McFlutter'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 180,
            child: Card(
            shape: RoundedRectangleBorder(
              side:BorderSide(color: Colors.black)
            ),
            child: Column(
              children: [
                ListTile(
                  leading:CircleAvatar(child: Icon(Icons.person)),
                  title: Text( textAlign: TextAlign.center,"Flutter McFlutter"),
                 subtitle: Text(textAlign: TextAlign.center,"Experienced App Developer"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("123 Main Street"),
                    Text("(415) 555-0198")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      color: tap?Colors.indigo:Colors.black,
                      onPressed: (){
                        tap = !tap;
                        setState(() {});
                      },
                      icon: Icon(Icons.accessibility_new_outlined)
                    ),
                    IconButton(
                      color: tep?Colors.indigo:Colors.black,
                      onPressed: (){
                        tep = !tep;
                        setState(() {});
                      },
                      icon: Icon(Icons.alarm)
                    ),
                    IconButton(
                      color: tip?Colors.indigo:Colors.black,
                      onPressed: (){
                        tip = !tip;
                        setState(() {});
                      },
                      icon: Icon(Icons.phone_android_rounded)
                    ),
                    IconButton(
                      color: top?Colors.indigo:Colors.black,
                      onPressed: (){
                        top = !top;
                        setState(() {});
                      },
                      icon: Icon(Icons.phone_iphone)
                    )
                  ],
                ),
              )
              ],
            )
          ),
          ),
          ),
          ),
        );
 
  }
}






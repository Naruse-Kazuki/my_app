import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Center(
          child: Container(
            width: 250,
            height: 500,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.cyan,
                  Colors.cyanAccent,
                  Colors.white
                ],
              ),
            ),
            child: Text(
                'Hello World',
            style: TextStyle(color: Colors.black, fontSize: 20.0),
            ),
          ),
//          Column(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            children:[
//              Image.asset('images/a_dot_burr.jpeg'),
//              Image.asset('images/a_dot_ham.jpeg'),
//            ],
//          );
        ),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
      ),
    );
  }
}


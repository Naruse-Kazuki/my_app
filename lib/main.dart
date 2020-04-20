import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  // Fields in a Widget subclass are always marked "final".

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        // <Widget> is the type of items in the list.
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // Expanded expands its child to fill the available space.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece of paper on which the UI appears.
    return Material(
      // Column is a vertical, linear layout.
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello, world!'),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'My app', // used by the OS task switcher
    home: MyScaffold(),
  ));
}



















//import 'package:flutter/material.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter layout demo',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Flutter layout demo'),
//        ),
//        body: Center(
//          child: Container(
//            alignment: Alignment.center,
//            decoration: BoxDecoration(
//              gradient: LinearGradient(
//                begin: Alignment.topCenter,
//                end: Alignment.bottomCenter,
//                colors: <Color>[
//                  Colors.cyan,
//                  Colors.cyanAccent,
//                  Colors.white
//                ],
//              ),
//            ),
//            child: Container(
//              constraints: BoxConstraints.expand(
//                height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 300.0,
//              ),
//              padding: const EdgeInsets.all(8.0),
//              color: Colors.green,
//              alignment: Alignment.center,
//              child: Text("Hello World", style: Theme.of(context)
//                .textTheme
//                  .display1
//                  .copyWith(color: Colors.white)),
//              transform: Matrix4.rotationZ(0.1),
//            ),
//          ),
////          Column(
////            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
////            children:[
////              Image.asset('images/a_dot_burr.jpeg'),
////              Image.asset('images/a_dot_ham.jpeg'),
////            ],
////          );
//        ),
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//      ),
//    );
//  }
//}
//

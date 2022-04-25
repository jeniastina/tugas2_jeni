import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add Product"),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(Icons.arrow_back),
          ),
          centerTitle: true,
        ),
        body: ListView(children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text('Product Information', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('''Product Image''', style: TextStyle(fontSize: 15)),
          ),
          Container(
            margin: EdgeInsets.all(20),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(Icons.add),
            ),
          )
        ]));
  }
}

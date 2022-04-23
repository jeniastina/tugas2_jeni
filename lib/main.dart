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
          child: Icon(Icons.add),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            width: 600,
            child: Text(
              'Product',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )),
      ),
    );
  }
}

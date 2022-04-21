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
        title: Text("Products"),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(Icons.add),
        ),
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ListTile(
                  leading: Image.network("https://2.bp.blogspot.com/-QxiD_sNU8yM/T6Dba3ehjcI/AAAAAAAAAMo/7bL6fUDXjb0/s1600/Pendleton-Black-White-Hero.png"),
                  title: Text(
                    "Brand new shoes",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    "SH_231",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ));
          }),
    );
  }
}

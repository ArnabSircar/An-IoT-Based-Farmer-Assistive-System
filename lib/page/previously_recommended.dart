import 'package:flutter/material.dart';
import 'dart:math';

import 'recommend.dart';

class previously extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Previous Recommendations',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Previous list of fertilizers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [(new Color(0xffffffff)), new Color(0xff00f25f)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            SizedBox.square(
              dimension: 20,
            ),
            Container(
              child: Card(
                color: Colors.white60,
                elevation: 3,
                child: ListTile(
                  title: Text(
                    "Crop Name sugarcane",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  subtitle: Text("01/08/2022"),
                  trailing: Icon(Icons.label_important_outlined),
                  leading: Icon(
                    Icons.ac_unit_outlined,
                    color: Colors.green,
                    size: 40,
                  ),
                  contentPadding: EdgeInsets.all(12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => recommend()),
                    );
                  },
                ),
              ),
            ),
            SizedBox.square(
              dimension: 8,
            ),
            Container(
              child: Card(
                color: Colors.white60,
                elevation: 3,
                child: ListTile(
                  title: Text(
                    "Crop Name Tea",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  subtitle: Text("03/02/2022"),
                  trailing: Icon(Icons.label_important_outlined),
                  leading: Icon(
                    Icons.ac_unit_outlined,
                    color: Colors.green,
                    size: 40,
                  ),
                  contentPadding: EdgeInsets.all(12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => recommend()),
                    );
                  },
                ),
              ),
            ),
            SizedBox.square(
              dimension: 8,
            ),
            Container(
              child: Card(
                color: Colors.white60,
                elevation: 3,
                child: ListTile(
                  title: Text(
                    "Crop Name  millets",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  subtitle: Text("05/5/2022"),
                  trailing: Icon(Icons.label_important_outlined),
                  leading: Icon(
                    Icons.ac_unit_outlined,
                    color: Colors.green,
                    size: 40,
                  ),
                  contentPadding: EdgeInsets.all(12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => recommend()),
                    );
                  },
                ),
              ),
            ),
            SizedBox.square(
              dimension: 8,
            ),
            Container(
              child: Card(
                color: Colors.white60,
                elevation: 3,
                child: ListTile(
                  title: Text(
                    "Crop Name wheat",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  subtitle: Text("21/05/2022"),
                  trailing: Icon(Icons.label_important_outlined),
                  leading: Icon(
                    Icons.ac_unit_outlined,
                    color: Colors.green,
                    size: 40,
                  ),
                  contentPadding: EdgeInsets.all(12),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => recommend()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

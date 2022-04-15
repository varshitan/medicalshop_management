import 'dart:html';

import 'package:flutter/material.dart';
import 'package:medicalshop_management/alert_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medicalshop_managment',
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String title = 'New medicines';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("New medicines"),
        centerTitle: true,
      ),
      body: Center(
          child: FloatingActionButton.extended(
        onPressed: () async {
          final action = await AlertDialogs.yesCancelDialog(
              context, "scan", "are you sure?");
        },
        icon: Icon(Icons.camera),
        label: Text("scan"),
      )),
    );
  }
}

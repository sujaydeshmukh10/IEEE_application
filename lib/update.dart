//import 'dart:io';
//import 'dart:async';
//import 'registration.dart';
//import 'package:flutter/material.dart';
//import 'main.dart';
//
//void main() => runApp(Dashboard_States());
//
//class Dashboard_States extends StatefulWidget {
//  @override
//  _MyAppState createState() => _MyAppState();
//}
//
//class _MyAppState extends State<Dashboard_States> {
//  bool _isEditingText = false;
//  TextEditingController _editingController;
//  String initialText = "Initial Text";
//  @override
//  void initState() {
//    super.initState();
//    _editingController = TextEditingController(text: initialText);
//  }
//  @override
//  void dispose() {
//    _editingController.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("Update"),
//      ),
//      body: Center(
//        child: _editTitleTextField(),
//      ),
//    );
//  }
//  @override
//  Widget _editTitleTextField(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: Scaffold(
//          appBar: AppBar(
//            title: Text(
//              'IEEE Dashboard',
//              textScaleFactor: 1.5,
//            ),
//          ),
//          body: Center(
//            child: new Container(
//              child: new Center(
//                  child: Column(children: <Widget>[
//                    Text(
//                      'Welcome',
//                      style: TextStyle(fontSize: 16),
//                    ),
//                    Container(
//
//
//                       if (_isEditingText)
//              return Center(
//              child: TextField(
//              onSubmitted: (newValue){
//              setState(() {
//              initialText = newValue;
//              _isEditingText =false;
//              });
//              },
//              autofocus: true,
//              controller: _editingController,
//              ),
//              );
//              return InkWell(
//              onTap: () {
//              setState(() {
//              _isEditingText = true;
//              });
//              },
//              child: Text(
//              initialText,
//              style: TextStyle(
//              color: Colors.black,
//              fontSize: 18.0,
//              ),
//              ));
//
//                    ),
//                  ])),
//            ),
//          )),
//    );
//  }
//  }

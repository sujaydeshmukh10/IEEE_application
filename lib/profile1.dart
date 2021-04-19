
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:mongo_dart/mongo_dart.dart' as dart_mongo;
import 'main.dart';
import 'after_login.dart';


var empName;
var empDob;
var empPhone;
var empEmail;
var empLoc;
var empimg;
void main() {
  runApp(profile1());
}

class profile1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _imageFile;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Profile ",
            style: TextStyle(fontSize: 18.0),
            textScaleFactor: 1.5,
            textAlign: TextAlign.justify,
          ),
        ),
        backgroundColor: Colors.blue[300],
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Text(
                    'Dhanshri Chaudhari',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'SourceSansPro',
                      color: Colors.red[400],
                      letterSpacing: 2.5,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 200,
                    child: Divider(
                      color: Colors.teal[100],
                    ),
                  ),
                  Text('Email id', style: TextStyle(fontSize: 18.0)),
                  Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.teal[600],
                        ),
                        title: Text(
                          'dhanshrichaudhari@gmail.com',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'BalooBhai', fontSize: 20.0),
                        ),
                      )),
                  Text('Mobile No.', style: TextStyle(fontSize: 18.0)),
                  Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.teal[600],
                        ),
                        title: Text(
                          '+91 8806900691',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'BalooBhai', fontSize: 20.0),
                        ),
                      )),
                  Text('Date of Birth :', style: TextStyle(fontSize: 18.0)),
                  Card(
                    color: Colors.white,
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.cake,
                        color: Colors.teal[600],
                      ),
                      title: Text(
                        '15/06/2000',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontFamily: 'Neucha', fontSize: 20.0),
                      ),
                    ),
                  ),
                  Text('IEEE Events :', style: TextStyle(fontSize: 18.0)),
                  Card(
                    color: Colors.white,
                    margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.event,
                        color: Colors.teal[600],
                      ),
                      title: Text(
                        'No event attended',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontFamily: 'Neucha', fontSize: 20.0),
                      ),
                    ),
                  ),
                  Text('College', style: TextStyle(fontSize: 18.0)),
                  Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.business,
                          color: Colors.teal[600],
                        ),
                        title: Text(
                          'MGICOET, Shegaon',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'BalooBhai', fontSize: 20.0),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

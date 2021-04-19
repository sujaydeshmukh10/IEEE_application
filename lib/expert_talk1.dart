
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:mongo_dart/mongo_dart.dart' as dart_mongo;


var empName;
var empDob;
var empPhone;
var empEmail;
var empLoc;
var empimg;
void main() {
  runApp(Expert1());
}

class Expert1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _imageFile;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Expert Talk ",
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
                  Container(
                    height: 120.0,
                    width: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'images/profile.png'),

                      ),
                      shape: BoxShape.circle,
                    ),
                  ),



                  SizedBox(
                    height: 20.0,
                    width: 200,
                    child: Divider(
                      color: Colors.teal[100],
                    ),
                  ),
                  Text('Speaker Name:', style: TextStyle(fontSize: 18.0)),
                  Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.perm_identity,
                          color: Colors.teal[600],
                        ),
                        title: Text(
                          'Sandip Maheshwari',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'BalooBhai', fontSize: 20.0),
                        ),
                      )),
                  Text('Contact Details', style: TextStyle(fontSize: 18.0)),
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
                          'sandipmaheshwari@gmail.com',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'BalooBhai', fontSize: 20.0),
                        ),
                      )),
                  Text('Expertise Subject', style: TextStyle(fontSize: 18.0)),
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
                          'Personality Development',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: 'BalooBhai', fontSize: 20.0),
                        ),
                      )),

                  Text('Qualification :', style: TextStyle(fontSize: 18.0)),
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
                        'B.Com',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontFamily: 'Neucha', fontSize: 20.0),
                      ),
                    ),
                  ),
                  Text('Destination', style: TextStyle(fontSize: 18.0)),
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
                          'MGI-COET, Shegaon',
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

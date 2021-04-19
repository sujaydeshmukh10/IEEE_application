import 'dart:io';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:ieee_projects/activity.dart';

import 'registration.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'college_Schedule1.dart';
import 'expert_talk1.dart';
import 'profile1.dart';
import 'activity1.dart';
void main() => runApp(Dashboard_State1());

class Dashboard_State1 extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Dashboard_State1> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'IEEE Dashboard',
              textScaleFactor: 1.5,
            ),
          ),
          body: Center(
            child:  new Container(
              child: new Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SingleChildScrollView(
                            child: Container(
                              margin: EdgeInsets.all(20.0),
                              width: 250.0,
                              height: 50.0,
                              alignment: Alignment.center,


                              child: Text(
                                'Welcome!',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20),
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.all(20.0),
                          width: 250.0,
                          height: 50.0,
                          child: RaisedButton(
                              child: Text(
                                'Expert Talk',
                                style: TextStyle(
                                    color: Colors.white,

                                    fontSize: 20),
                              ),
                              color: Colors.green,
                              splashColor: Colors.black54,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Expert1()));
//

                              }),
                        ),
                        Container(
                          margin: EdgeInsets.all(20.0),
                          width: 250.0,
                          height: 50.0,
                          child: RaisedButton(
                              child: Text(
                                'College Schedule',
                                style: TextStyle(
                                    color: Colors.white,

                                    fontSize: 20),
                              ),
                              color: Colors.green,
                              splashColor: Colors.black54,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Schedule1()));
//

                              }),
                        ),
                        Container(
                          margin: EdgeInsets.all(20.0),
                          width: 250.0,
                          height: 50.0,
                          child: RaisedButton(
                              child: Text(
                                'Activity Information',
                                style: TextStyle(
                                    color: Colors.white,

                                    fontSize: 20),
                              ),
                              color: Colors.green,
                              splashColor: Colors.black54,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Activity1()));
//

                              }),
                        ),
                        Container(
                          margin: EdgeInsets.all(20.0),
                          width: 250.0,
                          height: 50.0,
                          child: RaisedButton(
                              child: Text(
                                'Personal Information',
                                style: TextStyle(
                                    color: Colors.white,

                                    fontSize: 20),
                              ),
                              color: Colors.green,
                              splashColor: Colors.black54,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(16.0))),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => profile1()));
//

                              }),

                        ),

                      ])),
            ),
          )),
    );
  }
}

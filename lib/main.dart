import 'package:flutter/material.dart';
import 'registration.dart';
import 'package:flutter/cupertino.dart';
import 'after_login.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'update.dart';
import 'expert_talk.dart';
import 'activity.dart';
import 'college_Schedule.dart';
import 'after_login1.dart';
var Logemail;
var Logpass;
var logemploy;
var empName;
var empEmail;
var empPhone;
var empDob;
var empLoc;
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IEEE Login Page',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: MyAppState(),
      ),
    );
  }
}

class MyAppState extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'IEEE ',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    )),

                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Username',
                    ),
                    onChanged: (text) {
                      print("First text field: $text");
                      Logemail = text;

                      print(Logemail);
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10,10,10,0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: ' Enter Password',
                    ),
                    onChanged: (text) {
                      print("First text field: $text");
                      Logpass = text;

                      print(Logpass);
                    },
                  ),
                ),

                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10,10,10,0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text(
                        'Login as Member',
                        textScaleFactor: 1.4,
                      ),
                      onPressed: () {
                        login();
                        emprofile();

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard_State()));



                      },
                    )),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10,10,10,0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text(
                        'Login as Admin',
                        textScaleFactor: 1.4,
                      ),
                      onPressed: () {
                        login();
                        emprofile();

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard_State1()));



                      },
                    )),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('Does not have account?'),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Sign up',
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registration()));
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }}
void login() async {
  Db db = new Db("mongodb://10.0.2.2:27017/admin");
  await db.open();
  DbCollection coll = db.collection("member");
  var employ = await coll.findOne({
    r'$and': [
      {"email": Logemail},
      {"password": Logpass}
    ]
  });
  logemploy = employ;
}


// this method is used in profile.dart file.

emprofile() async {
  Db db = new Db("mongodb://10.0.2.2:27017/admin");
  await db.open();
  print('connected to database');
  DbCollection coll = db.collection("member");

  var dictValue0 = await coll
      .find(where.match("email", Logemail).excludeFields([
    "_id",
    "password",
    "cPass",
    "location",
    "email",
    "phone",
    "dob"
  ]))
      .toList();
  var arrayEle0 = dictValue0[0];

   empName = arrayEle0['name'];
  print(empName);

  var dictValue1 = await coll
      .find(where.match("email", Logemail).excludeFields([
    "_id",
    "password",
    "cPass",
    "location",
    "name",
    "phone",
    "dob"
  ]))
      .toList();
  var arrayEle1 = dictValue1[0];
   empEmail = arrayEle1['email'];
  print(empEmail);

  var dictValue2 = await coll
      .find(where.match("email", Logemail).excludeFields([
    "_id",
    "password",
    "cPass",
    "location",
    "name",
    "email",
    "dob"
  ]))
      .toList();
  var arrayEle2 = dictValue2[0];
   empPhone = arrayEle2['phone'];
  print(empPhone);

  var dictValue3 = await coll
      .find(where.match("email", Logemail).excludeFields([
    "_id",
    "password",
    "cPass",
    "location",
    "name",
    "email",
    "phone"
  ]))
      .toList();
  var arrayEle3 = dictValue3[0];
   empDob = arrayEle3['dob'];
  print(empDob);

  var dictValue4 = await coll
      .find(where.match("email", Logemail).excludeFields([
    "_id",
    "password",
    "cPass",
    "dob",
    "name",
    "email",
    "phone"
  ]))
      .toList();
  var arrayEle4 = dictValue4[0];
   empLoc = arrayEle4['location'];
  print(empLoc);



  await db.close();
}

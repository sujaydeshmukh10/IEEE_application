import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Activity1());
}

class Activity1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text('Activity'),
          ),
          body: Center(
            child:SingleChildScrollView(child:Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[


                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Activity 1',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),

                  new Container(

                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Activity Name : Personality Development", style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.center),
                  ),
                  new Container(
                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Details : Development of thoughts",style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.center),
                  ),
                  new Container(
                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Speaker : Sandip Maheshwari",style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.center),
                  ),
                  new Container(
                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Date : 10/11/2020",style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.center),
                  ),
                  new Container(
                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Time : 11 pm to 12 pm",style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.center),
                  ),

                  new Container(
                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Link to join : Google.com",style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.center),
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Activity 2',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )),

                  new Container(

                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Activity Name : ", style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.left),
                  ),
                  new Container(
                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Details :",style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.left),
                  ),
                  new Container(
                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Speaker : ",style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.left),
                  ),
                  new Container(
                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Date : ",style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.left),
                  ),
                  new Container(
                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Time : ",style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.left),
                  ),

                  new Container(
                    width: 300,
                    height: 30,
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: new Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    child: new Text("Link to join :",style: new TextStyle(fontSize:16.0,),textAlign: TextAlign.left),
                  )


                ])),
          )),
    );
  }
}

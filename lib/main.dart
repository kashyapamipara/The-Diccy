import 'package:flutter/material.dart';

import 'dart:math';
void main(){
  runApp(
  myapp()

  );



}
class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}




class _myappState extends State<myapp> {
  int l = 1;
  int r=1;
  void c() {
    r = Random().nextInt(6) + 1;
    l = Random().nextInt(6) + 1;
  }
    @override


  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Text("THE DICCY"),

          ),
          body: Center(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        c();
                      });

                    },
                    child:
                    Image.asset("assets/images/dice$l.png"),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        c();
                      });

                    },
                    child:
                    Image.asset("assets/images/dice$l.png"),
                  ),
                ),

              ],


            ),
          )


      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("Questions"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.teal
        ),
        width: 500,
        height: 600,
        child: ListView(
          padding: EdgeInsets.only(top: 20),
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              height: 100,
              child: Card(
                elevation: 20,
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Center(
                    child: Text("Le sommeil est un symptome du Covid-19?",style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90,right: 90,top: 20,bottom: 30),
              child: RaisedButton(
                textColor: Colors.white,
                child: Text("OUI"),
                color: Colors.green,
                onPressed: 
              ()
              {

              }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 90,right: 90,top: 20,bottom: 30),
              child: RaisedButton(
                textColor: Colors.white,
                child: Text("NON"),
                color: Colors.green,
                onPressed: 
              ()
              {

              }),
            ),

          ],
        ),
      ),
    );
  }
}
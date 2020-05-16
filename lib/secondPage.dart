import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizz_covid19/models/Questions.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

   static var tab =const ["fièvre","toux sèche","fatigue","maux de gorge","diarrhé","difficultés à respirer ou essoufflement",
  "sensation d’oppression ou douleur au niveau de la poitrine",];

  var list = [new Questions(tab[0].toString(), true),new Questions(tab[1].toString(), true),
  new Questions(tab[2].toString(), true),new Questions(tab[3].toString(), true),
  new Questions(tab[4].toString(), true),new Questions(tab[5].toString(), true),
  new Questions(tab[6].toString(), true)];
  var listQuestion;
  
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      getQuestions();
    });
  }
  
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
                    child: Text(""+listQuestion.toString(),style: TextStyle(
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
                setState(() {
                  getQuestions();
                });
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

  //Method which will show the Questions

  void getQuestions()
  {
    Random random = new Random();
    int number = random.nextInt(tab.length);
    listQuestion=list[number].questionn;
  }
}
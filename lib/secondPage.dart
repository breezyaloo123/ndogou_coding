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

  static bool answer1= true;
  static bool answer2 = false;

  var indice = 0;
  var num= 0;
  
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
                  num = (num + 1) % tab.length;
                  getQuestions();
                  checkAnswer(answer1);
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
                setState(() {
                      getQuestions();
                checkAnswer(answer2);
                });
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
    int number = random.nextInt(list.length);
    indice = number % list.length;
    listQuestion=list[number].questionn;
  }

  void checkAnswer(final bool answer)
  {
    final bool answerquestion = list[indice].answerr;
    if(answer == answerquestion)
    {
      print("Gooooooood");
      print(list[indice].questionn.toString());
    }
    else
    {
      print("Baaaaaaaaad");
    }
  }
}
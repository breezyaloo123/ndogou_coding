import 'package:flutter/material.dart';
import 'package:quizz_covid19/secondPage.dart';

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: Text("Quizz"),
        centerTitle: true,
      ),
      body:ListView(
      children: <Widget>[
        Center(
          widthFactor: 10,
          child: Text("Bienvenue sur Quizz Covid 19",style: TextStyle(
            color: Colors.blue,
            fontSize: 50,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold
          ),),
        ),
        Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(29)
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/covid19.jpg"),
          ))
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90,right: 90,top: 20),
            child: Container(
              width: 5,
              child: RaisedButton(
                color: Colors.blue,
              child: Text("Jouer",style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),),  
              onPressed: 
              ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()));
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text("Restez Chez Vous",style: TextStyle(
                color: Colors.redAccent,
                fontSize: 19,
              ),)),
          ),
      ],
      ),
    );
  }
}
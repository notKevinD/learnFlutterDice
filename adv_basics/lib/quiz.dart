import 'package:flutter/material.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/question_screen.dart';
class Quiz extends StatefulWidget {
 const Quiz({super.key});

 @override
 State<Quiz> createState(){
  return _QuizState();
 }
}

class _QuizState extends State<Quiz>{
var activeScreen = 'start-screen';


  void switchScreen(){
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ Color.fromARGB(255, 150, 20, 236),  Color.fromARGB(255, 89, 9, 151)],
            ),
          ),
          child: activeScreen=='start-screen'? StartScreen(startQuiz: switchScreen,):
          QuestionScreen(), // This is the question screen
        ),
      ),
    );
  }
}
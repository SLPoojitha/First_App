import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var index = 0;
  var questions = [
    {
      'questionText': 'What is your gender?',
      'answerText': [
        {'text': 'Male', 'score': 500},
        {'text': 'Female', 'score': 0},
        {'text': 'Others', 'score': 500},
      ],
    },
    {
      'questionText': 'Which age group you belong to?',
      'answerText': [
        {'text': '1-5', 'score': 1},
        {'text': '5-18', 'score': 2},
        {'text': '18-45', 'score': 3},
        {'text': '45-70', 'score': 4},
        {'text': '70+', 'score': 5},
      ],
    },
    {
      'questionText': 'How far you have vaccinated?',
      'answerText': [
        {'text': 'Both doses completed', 'score': 200},
        {'text': 'First dose completed', 'score': 100},
        {'text': 'Not Yet taken', 'score': 0},
      ],
    }
  ];
  var totalScore = 0;
  void toreset() {
    setState(() {
      index = 0;
      totalScore = 0;
    });
  }

  void todo(int s) {
    totalScore += s;
    setState(() {
      index = (index + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (index < questions.length)
            ? Quiz(questions, index, todo)
            : Result(totalScore, toreset),
      ),
    );
  }
}

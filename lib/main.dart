import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//void main() {
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favourite game genre?',
      'answers': [
        {'text': 'Action', 'score': 2},
        {'text': 'Scary', 'score': 1},
        {'text': 'Role-Playing', 'score': 3},
        {'text': 'Adventure', 'score': 4},
      ],
    },
    {
      'questionText': 'Which side of country you want to visit?',
      'answers': [
        {'text': 'West', 'score': 1},
        {'text': 'North', 'score': 3},
        {'text': 'East', 'score': 4},
        {'text': 'South', 'score': 2},
      ],
    },
    {
      'questionText': 'Which brand do you prefer to purchase?',
      'answers': [
        {'text': 'Apple', 'score': 3},
        {'text': 'Samsung', 'score': 4},
        {'text': 'Huawei', 'score': 1},
        {'text': 'Xiaomi', 'score': 2},
      ],
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    //var aBool = true;
    //aBool = false;

    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('We have more questions!');
    } else {
      print('No more question!');
    }
  }

  @override
  Widget build(BuildContext context) {
    //questions = [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}

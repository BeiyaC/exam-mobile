import 'dart:math';

import 'package:exam_quizz/data/hard_quizz.dart';
import 'package:exam_quizz/pages/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exam_quizz/data/easy_quizz.dart';
import 'package:exam_quizz/services/router.dart';

import '../data/medium_quizz.dart';
import '../enums/level.dart';
import '../models/quizz.dart';

class QuizzPage extends StatefulWidget {
  final Level level;
  final NavigationMethods router;

  QuizzPage({required this.router, required this.level});

  @override
  _QuizzPageState createState() => _QuizzPageState();

}

class _QuizzPageState extends State<QuizzPage> {
  final random = Random();

  int currentIndexQuestion = 0;
  int score = 0;
  int wrongAnswers = 0;
  int imageId = 0;

  late List<Question> questions = generateQuestionsByLevel(widget.level);

  List<Question> generateQuestionsByLevel(Level level){

    if(level == Level.medium){
      return MediumQuizzData().questionList;
    } else if(level == Level.hard) {
      return HardQuizzData().questionList;
    }
    return EasyQuizzData().questionList;
  }

  void answerValidation(bool playerAnswer) {
    bool is_correct_answer = questions[currentIndexQuestion].response == playerAnswer;
    
    if (is_correct_answer) {
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          backgroundColor: Colors.green,
          title: Text('GG bro'),
          content: Text(questions[currentIndexQuestion].explanation),
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    score++;
                  });
                  nextQuestion(currentIndexQuestion);
                },
                child: Text('Next')
            )
          ]
        )
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.red,
          title: Text('Noob.'),
          content: Text(questions[currentIndexQuestion].explanation),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  wrongAnswers++;
                });
                nextQuestion(currentIndexQuestion);
              },
              child: Text('Next')
            )
          ]
        )
      );
    }
  }

  void nextQuestion(int currentIndexQuestion) {
    Navigator.pop(context);
    if(currentIndexQuestion < questions.length - 1) {
      this.currentIndexQuestion++;
      this.imageId = this.random.nextInt(1000);
    } else {
      widget.router.replacePage(context, ResultPage(router: widget.router, score: score, total: questions.length));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Quizz'),
            Text(
              'Score: $score',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinearProgressIndicator(
            value: (currentIndexQuestion + 1) / questions.length,
            backgroundColor: Colors.grey[300],
            color: Colors.purple,
            minHeight: 10,
          ),
          Image.network('https://picsum.photos/$imageId'),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              questions[currentIndexQuestion].question,
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => answerValidation(true),
                child: Text('True'),
              ),
              ElevatedButton(
                onPressed: () => answerValidation(false),
                child: Text('False'),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
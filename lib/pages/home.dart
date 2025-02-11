import 'package:exam_quizz/pages/quizz.dart';
import 'package:flutter/material.dart';
import 'package:exam_quizz/services/router.dart';
import 'package:exam_quizz/enums/level.dart';

class HomePage extends StatelessWidget {
  final NavigationMethods router = NavigationMethods();
  final int last_score;

  HomePage({this.last_score=0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Column(
            children: [
              Text('Quiz App'),
              Text("Last score: $last_score")
            ],
          )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                router.navigateToPage(context, QuizzPage(router: router, level: Level.easy));
              },
              child: Text('Easy Quiz'),
            ),
            ElevatedButton(
              onPressed: () {
                router.navigateToPage(context, QuizzPage(router: router, level: Level.medium));
              },
              child: Text('Medium Quiz'),
            ),
            ElevatedButton(
              onPressed: () {
                router.navigateToPage(context, QuizzPage(router: router, level: Level.hard));
              },
              child: Text('Hard Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exam_quizz/pages/home.dart';
import 'package:exam_quizz/services/router.dart';

class ResultPage extends StatelessWidget {
  final int score;
  final int total;
  final NavigationMethods router;


  const ResultPage({required this.router, required this.score, required this.total});

  Color getResultColor() {
    double percentage = (score / total) * 100;
    if (percentage >= 80) {
      return Colors.green;
    } else if (percentage >= 50) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz Results')),
      backgroundColor: getResultColor(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Score: $score / $total',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                router.navigateToPage(context, HomePage(last_score: score));
              },
              child: Text('Restart Quiz'),
            ),
          ],
        ),
      )
    );
  }
}
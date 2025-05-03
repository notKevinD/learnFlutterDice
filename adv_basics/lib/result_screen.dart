import 'package:flutter/material.dart';
import 'package:adv_basics/data/question.dart';
import 'package:adv_basics/questions_summary.dart';
// import 'package:adv_basics/quiz.dart';



class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.selectedAnswers, required this.restartQuiz} );  
  final void Function() restartQuiz;

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'user_answer': selectedAnswers[i],
        'correct_answer': questions[i].answers[0],
        
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctAnswers = summaryData.where((item) {
      return item['user_answer'] == item['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $correctAnswers out $totalQuestions questions correctly!', textAlign: TextAlign.center,style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.w300),),
            SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            SizedBox(height: 30),
            OutlinedButton.icon(
            onPressed: restartQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.restart_alt_outlined),
            label: const Text('Restart Quiz'), // ✅ restart quiz button
            ),
          ],
        ),
      ),
    );
  }
}

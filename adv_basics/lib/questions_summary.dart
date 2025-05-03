import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start, 
                  // crossAxisAlignment: CrossAxisAlignment.baseline,// ✅ center row
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: data['user_answer'] == data['correct_answer']? Color.fromARGB(255, 28, 0, 211) : Color.fromARGB(255, 187, 0, 0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        ((data['question_index'] as int) + 1).toString(),
                        style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start, // ✅ neat layout
                        children: [
                          Text(
                            data['question'] as String,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color.fromRGBO(219, 209, 255, 1),
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text('Your answer: ${data['user_answer']}',style: TextStyle(color: Colors.greenAccent, fontSize: 12),),
                          Text('Correct answer: ${data['correct_answer']}',style: TextStyle(color: Colors.lightBlueAccent, fontSize: 12)),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}

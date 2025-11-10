import 'package:exam_schedule_app/models/exam_model.dart';
import 'package:flutter/material.dart';

class ExamCounter extends StatelessWidget {
  const ExamCounter({
    super.key,
    required this.examData,
  });

  final List<Exam> examData;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color:const Color.fromARGB(255, 77, 10, 32),
            borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.all(8),
          
          child: Text(
            'Испити: ${examData.length}',
            style: TextStyle(
              fontFamily: "Manrope",
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
        ),
      ),
    );
  }
}


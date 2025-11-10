import 'package:exam_schedule_app/models/exam_model.dart';
import 'package:flutter/material.dart';

class ExamStatus extends StatelessWidget {
  const ExamStatus({
    super.key, required this.exam,
    
  });

  final Exam exam;

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final differenceDays = exam.dateTime.difference(today).inDays;
    final differenceHours = exam.dateTime.difference(today).inHours;
    final bool isPassed = exam.dateTime.isBefore(DateTime.now());
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 246, 226, 231),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ 
            Icon(Icons.timelapse, size: 40,color:const Color.fromARGB(255, 64, 9, 27)),
            
            Text(
              isPassed ? 
              "Испитот е завршен" :
              "Испитот започнува за: \n $differenceDays дена, $differenceHours часа",
              style: TextStyle(
                fontFamily: "Manrope",
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}


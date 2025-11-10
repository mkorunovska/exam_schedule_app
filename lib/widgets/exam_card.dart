import 'package:exam_schedule_app/models/exam_model.dart';
import 'package:flutter/material.dart';

class ExamCard extends StatelessWidget {

  const ExamCard({
    super.key,
    required this.exam,
  });

  final Exam exam;

  @override
  Widget build(BuildContext context) {
    final date = "${exam.dateTime.year}-${exam.dateTime.month.toString()}-${exam.dateTime.day.toString()}";
    final time = "${exam.dateTime.hour.toString().padLeft(2, '0')}:${exam.dateTime.minute.toString().padLeft(2, '0')}";
    final bool isPassed = exam.dateTime.isBefore(DateTime.now());
    final style = Theme.of(context).textTheme.bodyMedium?.copyWith(fontFamily: "Manrope", fontWeight: FontWeight.bold);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isPassed 
            ? const Color.fromARGB(255, 209, 207, 207) 
            : const Color.fromARGB(255, 246, 225, 231)),
          borderRadius: BorderRadius.circular(10)
        ),
        elevation:4,
        color: isPassed 
        ? const Color.fromARGB(255, 209, 207, 207) 
        : const Color.fromARGB(255, 246, 226, 231) ,
      
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(exam.subjectName,
              textAlign: TextAlign.center,
               style: TextStyle(
                fontFamily: "Manrope",
                fontSize: 23,
                fontWeight: FontWeight.bold
               ),          
               
              ),
              Row(
                children: [
                  Icon(Icons.calendar_month,size: 20,),
                  Text(date, style: style),
                ],
              ),
      
              Row(
                children: [
                  Icon(Icons.schedule, size:20),
                  Text(time, style: style)
                ],
              ),
      
              Row(
                children: [
                  Icon(Icons.room, size:20),
                  Text(exam.generateExamRoom(), style: style),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
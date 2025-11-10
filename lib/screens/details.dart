
import 'package:exam_schedule_app/models/exam_model.dart';
import 'package:exam_schedule_app/widgets/details_page_bar.dart';
import 'package:exam_schedule_app/widgets/exam_card.dart';
import 'package:exam_schedule_app/widgets/exam_status.dart';
import 'package:flutter/material.dart';

class ExamDetailsPage extends StatelessWidget {
  const ExamDetailsPage({super.key, required this.exam});

  final Exam exam;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: Text(
          "Детали за испит",
          style: TextStyle(
            fontFamily: "Manrope",
            fontWeight: FontWeight.bold,
            color: Colors.white
          )
        ),
        backgroundColor: const Color.fromARGB(255, 64, 9, 27),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),

      body: Column(
        children: [
          Container(
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50)
              ),
              color: const Color.fromARGB(255, 64, 9, 27)
            ),
            child: DetailsPageBar(exam: exam),
          ),

          ExamCard(exam: exam),

          ExamStatus(exam: exam)
        ],
      ),
    );
  }
}


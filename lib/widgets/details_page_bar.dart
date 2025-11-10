import 'package:exam_schedule_app/models/exam_model.dart';
import 'package:flutter/material.dart';

class DetailsPageBar extends StatelessWidget {
  const DetailsPageBar({
    super.key,
    required this.exam,
  });

  final Exam exam;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top:80,
          left: 0,
          height: 100,
          width: 300,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50)
              )
            ),
          )
        ),
        Positioned(
          top:120,
          left: 20,
          child: Text(
            textAlign: TextAlign.start,
            exam.subjectName,
            style: TextStyle(
              fontFamily: "Manrope",
              fontSize: 15,
              fontWeight: FontWeight.bold, 
            )
          ),
        )
      ]
    );
  }
}
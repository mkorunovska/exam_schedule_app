import 'package:exam_schedule_app/models/exam_model.dart';
import 'package:exam_schedule_app/widgets/exam_card.dart';
import 'package:exam_schedule_app/widgets/exam_counter.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    final examData = Exam.loadExams();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        flexibleSpace: Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
            ),
            color: const Color.fromARGB(255, 64, 9, 27),
          ),
        ),
        title: Text(
          "Распоред за испити \n - [231290]",
          style: TextStyle(
            fontFamily: "Manrope",
            color: Colors.white,
            fontWeight: FontWeight.bold
            ),
          textAlign: TextAlign.center,
        ),
      ),

      body: Stack(
        children:[ 
          ListView.builder(
            itemCount: examData.length,
            itemBuilder: (context, index){
            final exams = examData[index]; 
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/details", arguments: exams);
              },
              child: ExamCard(exam: exams),
              );
            }  
          ),
          ExamCounter(examData: examData),
        ]
      ),
    );
  }
}


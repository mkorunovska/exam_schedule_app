import 'package:exam_schedule_app/models/exam_model.dart';
import 'package:exam_schedule_app/screens/details.dart';
import 'package:exam_schedule_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const MyHomePage(),
        "/details" : (context){
          final exam = ModalRoute.of(context)!.settings.arguments as Exam;
          return ExamDetailsPage(exam: exam);},
      },
    );
  }
}


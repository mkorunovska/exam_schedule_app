import 'dart:math';

class Exam{
  final String subjectName;
  final DateTime dateTime;
  final List<String> examRooms;

  Exam({
    required this.subjectName,
    required this.dateTime,
    required this.examRooms,
  });


  static final List<Exam> _examList = [
    Exam(
      subjectName:"Мобилни информациски системи",
      dateTime: DateTime(2025,12,15,18,30),
      examRooms: ["Лабораторија 138", "Лабораторија 2"],
    ),

    Exam(
      subjectName:"Веб програмирање",
      dateTime: DateTime(2025,12,21,17,00),
      examRooms: ["Лабораторија 200а", "Лабораторија 138", "Лабораторија 2"],
    ),

    Exam(
      subjectName:"Дизајн и архитектура на софтвер",
      dateTime: DateTime(2025,12,18,19,00),
      examRooms: ["Лабораторија 13", "Лабораторија 2"],
    ),

    Exam(
      subjectName:"Веб дизајн",
      dateTime: DateTime(2025,12,19,16,30),
      examRooms: ["Лабораторија 138", "Лабораторија 2", "Лабораторија 200а"],
    ),

    Exam(
      subjectName:"Основи на роботика",
      dateTime: DateTime(2025,12,20,08,00),
      examRooms: ["Барака 3.2", "АМФ ФИНКИ Г"],
    ),

    Exam(
      subjectName:"Вовед во науката за податоци",
      dateTime: DateTime(2025,11,15,15,00),
      examRooms: ["Лабораторија 2", "Лабораторија 200а"],
    ),

    Exam(
      subjectName:"Математика 3",
      dateTime: DateTime(2025,11,5,13,00),
      examRooms: ["Просторија 315", "Барака 1", "Барака 2.2" ],
    ),

    Exam(
      subjectName:"Напредно програмирање",
      dateTime: DateTime(2025,11,10,12,00),
      examRooms: ["Лабораторија 117", "Лабораторија 2", "Лабораторија 215"],
    ),

    Exam(
      subjectName:"Алгоритми и податочни структури",
      dateTime: DateTime(2025,11,1,10,30),
      examRooms: ["Лабораторија 13", "Лабораторија 2", "Лабораторија 200а"],
    ),

    Exam(
      subjectName:"Бази на податоци",
      dateTime: DateTime(2025,11,2,14,00),
      examRooms: ["Лабораторија 3","Лабораторија 117", "Лабораторија 12"],
    ),

    Exam(
      subjectName:"Дистрибуирани системи",
      dateTime: DateTime(2025,11,7,11,30),
      examRooms: ["Лабораторија 117"],
    ),  

  ];

  List<Exam> get examList => _examList;


  String get examRoom => _examRoom;
  String _examRoom= "";

  static List<Exam> loadExams(){
    _examList.sort((a, b) => b.dateTime.compareTo(a.dateTime)); 
    return _examList;
  }

  String generateExamRoom(){
    if(_examRoom.isEmpty){
      var random = Random();
      int rand = random.nextInt(examRooms.length);
      _examRoom = examRooms[rand];
    }
    return examRoom;

    }


   
}
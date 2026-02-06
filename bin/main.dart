import '../lib/anonymous_arrow_funcs.dart';
import '../lib/create_student.dart';
import '../lib/student.dart';
import '../lib/teacher.dart';
import '../lib/welcome_message.dart';
import '../lib/student_loader.dart';

Future<void> main() async {
  print("\n=== Part 1: Functions ===\n");

  print("Printing welcome message:\n");
  welcomeMessage();

  print("\nCreating students and teachers:\n");
  createStudent(name: "Claver", age: 23);
  createTeacher("Dr. Ange", subject: "Microprocessor");
  createTeacher("Dr. Alexandre");

  print("\n=== Part 2 & 3: Classes and Inheritance ===\n");
  final s1 = Student("Emmanuel", 20);
  print("Student Name: ${s1.name}, Age: ${s1.age}");
  s1.introduce();

  print("\n=== Part 5: Attendance Mixin ===\n");
  s1.markAttendance();
  s1.markAttendance();
  s1.markAttendance();
  print("Attendance of ${s1.name}: ${s1.attendance}");

  print("\n=== Part 6: Collections ===\n\n");
  final studentList = <Student>[
    Student("NDAYISABA", 20),
    Student("Hakuzwimana", 22),
    Student("Mugisha", 21),
  ];

  final studentMap = <String, Student>{
    "222078370": studentList[0],
    "223004000": studentList[1],
    "224005618": studentList[2],
  };

  print("List of Students:");
  for (final student in studentList) {
    print("- ${student.name}, Age: ${student.age}");
  }

  print("\nMap of Students:");
  studentMap.forEach((id, student) {
    print("ID: $id, Name: ${student.name}");
  });

  print("\n=== Part 7: Anonymous & Arrow Functions ===\n");
  printStudentNamesAnonymous(studentList);
  greatStudent("Fabrice");

  print("\n=== Part 8: Asynchronous Programming ===\n");
  final loadedStudents = await loadStudents(studentList);
  print("Number of students loaded: ${loadedStudents.length}");

  print("\n=== Part 9: Notification Mixin ===\n");
  final s2 = Student("Silas", 24);
  s2.registerCourse("Dart Programming");
}

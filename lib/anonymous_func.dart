import 'student.dart';

Future<List<Student>> loadStudents(List<Student> students) async {
  await Future.delayed(Duration(seconds: 2));
  return students;
}
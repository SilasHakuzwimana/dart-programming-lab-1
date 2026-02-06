import 'student.dart';
void printStudentNamesAnonymous(List<Student> students) {
  students.forEach((student) => print("Anonymous function: ${ student.name}"));
}

void greatStudent(String name) => print("Good morning, $name! Welcome to our school system.");
void createTeacher(String name, {String? subject}) {
  final assignedSubject = subject ?? "Subject not assigned";
  print("Teacher Name: $name, Subject: $assignedSubject");
}

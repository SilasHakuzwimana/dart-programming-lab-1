void createTeacher(String name, {String? subject}) {
  final assigned = subject ?? "Subject not assigned";
  print("Teacher Name: $name, Subject: $assigned");
}

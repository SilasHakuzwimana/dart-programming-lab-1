import 'person.dart';
import 'registrable.dart';
import 'attendance_mixin.dart';
import 'notification_mixin.dart';

class Student extends Person
    with AttendanceMixin, NotificationMixin
    implements Registrable {
  final int age;

  Student(String name, this.age) : super(name);

  @override
  void registerCourse(String courseName) {
    print("$name registered for $courseName");
    notifyRegistrationSuccess(name, courseName);
  }
}

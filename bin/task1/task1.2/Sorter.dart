import 'Student.dart';

class Sorter {
  void sortStudentsByGPA(List<Student> students) {
    students.sort((a, b) => b.GPA.compareTo(a.GPA));
  }
}

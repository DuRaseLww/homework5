import 'Student.dart';
import 'Sorter.dart';

void main() {
  Student student = Student("Иван", 23, 9.1);
  Student student1 = Student("Алексей", 22, 8.78);
  Student student2 = Student("Иван", 25, 9.97);
  Student student3 = Student("Дмитрий", 19, 5.21);

  List<Student> students = [];
  students.add(student);
  students.add(student1);
  students.add(student2);
  students.add(student3);

  Sorter sorter = Sorter();
  sorter.sortStudentsByGPA(students);

  print(students);

}
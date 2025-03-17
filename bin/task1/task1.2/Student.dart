class Student {
  final String name;
  final int age;
  final double GPA;

  const Student(this.name, this.age, this.GPA);

  @override
  String toString() {
    return 'Student{name: $name, age: $age, GPA: $GPA}';
  }
}
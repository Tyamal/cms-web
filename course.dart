class Course {
  final String id;
  final String title;
  final String description;
  final String instructor;

  Course({required this.id, required this.title, required this.description, required this.instructor});

  factory Course.fromMap(Map<String, dynamic> data) {
    return Course(
      id: data['id'],
      title: data['title'],
      description: data['description'],
      instructor: data['instructor'],
    );
  }
}

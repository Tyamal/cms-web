import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/course.dart';

class ApiService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Course>> getCourses() async {
    final snapshot = await _db.collection('courses').get();
    return snapshot.docs.map((doc) => Course.fromMap(doc.data())).toList();
  }

  Future<void> addCourse(Course course) async {
    await _db.collection('courses').add({
      'title': course.title,
      'description': course.description,
      'instructor': course.instructor,
    });
  }
}

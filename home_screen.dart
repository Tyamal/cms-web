import 'package:flutter/material.dart';
import '../services/api_service.dart';
import '../models/course.dart';

class HomeScreen extends StatelessWidget {
  final ApiService apiService = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Courses')),
      body: FutureBuilder<List<Course>>(
        future: api

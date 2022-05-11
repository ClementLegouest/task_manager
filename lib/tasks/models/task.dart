import 'dart:core';

class Task {
  final String title;
  final String description;

  const Task({
    required this.title,
    required this.description
  });

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(
      title: json['title'],
      description: json['description'],
    );
  }
}
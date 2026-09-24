import 'dart:io';

List<Map<String, dynamic>> students = [
  {
    "id": 101,
    "name": "Arun",
    "course": "Flutter",
    "marks": [80, 75, 90],
  },
  {
    "id": 102,
    "name": "Rahul",
    "course": "Python",
    "marks": [65, 70, 60],
  },
  {
    "id": 103,
    "name": "Anu",
    "course": "Flutter",
    "marks": [92, 88, 95],
  },
  {
    "id": 104,
    "name": "Fazil",
    "course": "Python",
    "marks": [55, 62, 58],
  },
  {
    "id": 105,
    "name": "Neha",
    "course": "Flutter",
    "marks": [72, 80, 76],
  },
];
void main() {
  for (var student in students) {
    List<int> marks = student["marks"];
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }

    double average = total / marks.length;

    print("ID: ${student['id']}");
    print("name: ${student["name"]}");
    print("course: ${student["course"]}");
    print("marks : ${student["marks"]}");
    print("average mark : ${average.toStringAsFixed(2)}");

  }
  // task 2
  stdout.write('Enter Student ID to search: ');
  String? searchInput = stdin.readLineSync();
  int? searchId = int.tryParse(searchInput ?? '');

  if (searchId != null) {
    bool found = false;
    for (var student in students) {
      if (student['id'] == searchId) {
        List<int> marks = student['marks'];
        int total = 0;
        for (int mark in marks) {
          total += mark;
        }
        double average = total / marks.length;

        print('\nStudent Found:');
        print('Name: ${student['name']}');
        print('Course: ${student['course']}');
        print('Marks: $marks');
        print('Average mark: ${average.toStringAsFixed(2)}');
        found = true;
        break;
      }
    }
    if (!found) {
      print('Student not found');
    }
  } else {
    print('Invalid ID entered.');
  }



  // task3
  Map<String, dynamic>? topper;
  double highestaverage = 0.0;
  for (var student in students) {
    List<int> marks = student["marks"];
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    double average = total / marks.length;
    if (average > highestaverage) {
      highestaverage = average;
      topper = student;
    }
  }
  if (topper != null) {
    print('Student Name: ${topper['name']}');
    print('Course: ${topper['course']}');

  }

  // task 4
  stdout.write('Enter a course name (e.g., Flutter or Python): ');
  String? courseInput = stdin.readLineSync();

  if (courseInput == null || courseInput.trim().isEmpty) {
    print('Please enter a valid course name.');
  } else {
    String targetCourse = courseInput.trim();
    bool foundAny = false;

    print('\n$targetCourse Students:');
    for (var student in students) {
      if (student['course'].toString().toLowerCase() ==
          targetCourse.toLowerCase()) {
        print(student['name']);
        foundAny = true;
      }
    }

    if (!foundAny) {
      print('No students found for "$targetCourse".');
    }

  }
}

// task5

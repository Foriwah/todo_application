import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';
import 'package:my_todo_app/todo/presentation/pages/dashboard/widgets/tips_container.dart';


List<Widget> gridviwwidgets = [
  const TipsContainer(),
  Container(
    height: 200,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.red,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Work',
              style: TextStyle(
                  color: CustomColors.genericWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
        ],
      ),
    ),
  ),
  Container(
    height: 300,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Personal',
              style: TextStyle(
                  color: CustomColors.genericWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
        ],
      ),
    ),
  ),
  Container(
    height: 200,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.brown,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'School',
              style: TextStyle(
                  color: CustomColors.genericWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
        ],
      ),
    ),
  ),
  Container(
    height: 150,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
    ),
  ),
];





List tips =[
  'Focus on the most important task',
  'Divide larger task into manageable subtasks',
  'Set deadlines to stay on track',
  'Concentrate on one task at a time for better efficiency',
  'Regular short breaks improve productivity',
];




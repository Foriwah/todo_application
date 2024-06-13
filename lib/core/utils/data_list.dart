
import 'package:flutter/material.dart';
import 'package:my_todo_app/todo/presentation/pages/dashboard/widgets/personal_board.dart';
import 'package:my_todo_app/todo/presentation/pages/dashboard/widgets/school_board.dart';
import 'package:my_todo_app/todo/presentation/pages/dashboard/widgets/tips_container.dart';
import 'package:my_todo_app/todo/presentation/pages/dashboard/widgets/work_board.dart';

List<Widget> gridviwwidgets = [
  const TipsContainer(),
  const WorkBoard(),
  const PersonalBoard(),
  const SchoolBoard(),
  Container(
    height: 150,
    width: 100,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
    ),
  ),
];







List tips = [
  'Focus on the most important task',
  'Divide larger task into manageable subtasks',
  'Set deadlines to stay on track',
  'Concentrate on one task at a time for better efficiency',
  'Regular short breaks improve productivity',
];

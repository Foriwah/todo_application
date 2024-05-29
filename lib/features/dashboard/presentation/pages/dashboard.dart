import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: const Center(
        child: Text('Dashboard'),
      ),
    );
  }
}
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';
import 'package:my_todo_app/todo/presentation/pages/add_todo/pages/add_todo.dart';
import 'package:my_todo_app/todo/presentation/pages/boards/pages/boards.dart';
import 'package:my_todo_app/todo/presentation/pages/calendar/pages/calendar_view.dart';
import 'package:my_todo_app/todo/presentation/pages/dashboard/pages/dashboard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = const [
    Dashboard(),
    MyCalendar(),
    Boards(),
    Dashboard(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTodo(),
            ),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: CustomColors.primaryColor,
          child: Icon(
            size: 25,
            CupertinoIcons.plus,
            color: CustomColors.genericWhite,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          leftCornerRadius: 30,
          rightCornerRadius: 30,
          icons: const [
            CupertinoIcons.home,
            CupertinoIcons.calendar,
            CupertinoIcons.graph_square,
            CupertinoIcons.profile_circled,
          ],
          activeIndex: currentIndex,
          backgroundColor: CustomColors.genericWhite,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          activeColor: CustomColors.primaryColor,
          inactiveColor: CustomColors.genericBlack.withAlpha(100),
          splashColor: Colors.transparent,
          onTap: (index) => setState(() => currentIndex = index)),
    );
  }
}

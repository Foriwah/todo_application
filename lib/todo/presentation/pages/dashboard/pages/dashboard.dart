import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';
import 'package:my_todo_app/core/utils/data_list.dart';
import 'package:my_todo_app/todo/presentation/widgets/custom_heading.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColors.background,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              const DefaultHeading(
                text: 'Dashboard',
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: MasonryGridView.count(
                  itemCount: 4,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  crossAxisCount: 2,
                  itemBuilder: (context, index) {
                    return gridviwwidgets[index];
                  },
                ),
              )
            ]),
          )),
    );
  }
}

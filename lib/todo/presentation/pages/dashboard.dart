import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  List<Widget> gridviwwidgets = [
    Container(
      height: 300,
      width: 100,
      color: Colors.amber,
    ),
   Container(
      height: 200,
      width: 100,
      color: Colors.red,
    ),
   Container(
      height: 300,
      width: 100,
      color: Colors.green,
    ),
    Container(
      height: 200,
      width: 100,
      color: Colors.amber,
    ),
   Container(
      height: 100,
      width: 100,
      color: Colors.blue,
    ),
   
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: CustomColors.background,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
 const SizedBox(
                  height: 20,
                ),
                Text('Dashboard',style: TextStyle(color: CustomColors.genericBlack.withAlpha(140),fontSize: 20),),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child:MasonryGridView.count(
                    itemCount: 5,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 20,
              crossAxisCount: 2,
              
              itemBuilder: (context, index) {
                return gridviwwidgets[index];
              },
            ) ,
                )
              ]
            ),
          )),
    );
  }
}

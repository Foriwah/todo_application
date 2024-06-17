import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';


class Boards extends StatefulWidget {
  const Boards({super.key});

  @override
  State<Boards> createState() => _BoardsState();
}

class _BoardsState extends State<Boards> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.background,
       
        body: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const SizedBox(
                  height: 20,
                ),
              Text(
                  'Boards',
                  style: TextStyle(
                      color: CustomColors.genericBlack.withAlpha(140),
                      fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 20),
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.green, borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Personal Board',
                            style: TextStyle(
                              color: CustomColors.genericWhite,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '10 total task \n under this board',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: CustomColors.lightgray,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: CustomColors.primaryColor),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: CustomColors.primaryColor.withAlpha(60),
                            child: Icon(
                              size: 25,
                              CupertinoIcons.plus,
                              color: CustomColors.genericBlack.withAlpha(120),
                            ),
                          ),
                         const  SizedBox(
                            height: 10,
                          ),
                         const Text('Add Board')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

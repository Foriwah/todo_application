import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';
import 'package:my_todo_app/todo/presentation/pages/boards/widgets/board_container.dart';
import 'package:my_todo_app/todo/presentation/widgets/custom_formfield.dart';

class Boards extends StatefulWidget {
  const Boards({super.key});

  @override
  State<Boards> createState() => _BoardsState();
}

class _BoardsState extends State<Boards> {
  TextEditingController boardName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cs = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
                    const BoardContainer(),
                    GestureDetector(
                      onTap: () {
                        showAdaptiveDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              actionsAlignment: MainAxisAlignment.spaceBetween,
                              title: const Text('Create Board'),
                              content: SizedBox(
                                height: cs.height * 0.2,
                                width: cs.width * 0.80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomFormField(
                                      controller: boardName,
                                      label: 'Name',
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    CustomFormField(
                                      controller: boardName,
                                      label: 'Select Color',
                                    )
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                      color: CustomColors.genericBlack.withAlpha(140),
                                    ),
                                    textAlign: TextAlign.end,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: const Text('Create Board',
                                      textAlign: TextAlign.end),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Container(
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
                              backgroundColor:
                                  CustomColors.primaryColor.withAlpha(60),
                              child: Icon(
                                size: 25,
                                CupertinoIcons.plus,
                                color: CustomColors.genericBlack.withAlpha(120),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text('Add Board')
                          ],
                        ),
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

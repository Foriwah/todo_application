


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';
import 'package:my_todo_app/todo/presentation/pages/dashboard/widgets/tips_text.dart';

class PersonalBoard extends StatelessWidget {
  const PersonalBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
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
            const SizedBox(
                height: 10,
              ),
              TipsTextWidget(
                text: 'Work out today',
                color: CustomColors.lightgray,
              ),
              TipsTextWidget(
                text: 'Create your weekly budget plan',
                color: CustomColors.lightgray,
              ),
              TipsTextWidget(
                text: 'Read your bible',
                color: CustomColors.lightgray,
              ),
              TipsTextWidget(
                text: 'Pray at 1 pm',
                color: CustomColors.lightgray,
              ),
              const SizedBox(
                height: 8,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Due today',
                    style: TextStyle(
                      color: CustomColors.genericWhite,
                    ),
                  )),
              Align(
                 alignment: Alignment.bottomRight,
                child: Icon(
                  CupertinoIcons.arrow_right,
                  color: CustomColors.genericWhite,
                ),
              )
          ],
        ),
      ),
    );
  }
}
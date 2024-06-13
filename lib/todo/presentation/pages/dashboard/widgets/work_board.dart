



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';
import 'package:my_todo_app/todo/presentation/pages/dashboard/widgets/tips_text.dart';

class WorkBoard extends StatelessWidget {
  const WorkBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            const SizedBox(
              height: 10,
            ),
            TipsTextWidget(
              text: 'Get a new job',
              color: CustomColors.lightgray,
            ),
            TipsTextWidget(
              text: 'Code Review',
              color: CustomColors.lightgray,
            ),
            TipsTextWidget(
              text: 'Management meeting at 8am',
              color: CustomColors.lightgray,
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Due in 5 days',
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
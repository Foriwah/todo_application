

import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';
import 'package:my_todo_app/core/utils/data_list.dart';
import 'package:my_todo_app/todo/presentation/pages/dashboard/widgets/tips_text.dart';

class TipsContainer extends StatelessWidget {
  const TipsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      // width: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(4, 4),
            blurRadius: 10
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Productivity Tips',
              style: TextStyle(
                  color: CustomColors.genericWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            ...List.generate(4, (index) {
             return TipsTextWidget(
                text: tips[index],
              );
            }),
    
           const SizedBox(
              height: 8,
            )
          
           
            
          ],
        ),
      ),
    );
  }
}
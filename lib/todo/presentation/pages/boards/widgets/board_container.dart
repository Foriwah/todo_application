

import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';

class BoardContainer extends StatelessWidget {
  const BoardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
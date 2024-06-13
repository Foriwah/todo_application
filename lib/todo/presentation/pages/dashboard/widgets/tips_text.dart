import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/constants.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';

class TipsTextWidget extends StatelessWidget {
  final String text;
  const TipsTextWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        '${Constants.bullet} $text',
        style: TextStyle(color: CustomColors.darkGray.withAlpha(170),),
      ),
    );
  }
}
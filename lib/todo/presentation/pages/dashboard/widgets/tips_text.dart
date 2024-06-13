import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';
import 'package:my_todo_app/todo/presentation/widgets/bullet.dart';

class TipsTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  const TipsTextWidget({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Bullettin(),
          const SizedBox(width: 4), // Add space between bullet and text
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: color ?? CustomColors.darkGray.withAlpha(140),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

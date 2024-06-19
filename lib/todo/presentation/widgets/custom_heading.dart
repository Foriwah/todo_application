import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';

class DefaultHeading extends StatelessWidget {
  final String text;
  const DefaultHeading({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: CustomColors.genericBlack.withAlpha(140), fontSize: 20),
    );
  }
}

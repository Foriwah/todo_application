import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';

class Bullettin extends StatelessWidget {
  const Bullettin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 3,
      backgroundColor: CustomColors.genericWhite,
    );
  }
}

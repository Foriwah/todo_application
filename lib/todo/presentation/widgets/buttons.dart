import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    super.key,
    required this.cs,
  });

  final Size cs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(
              cs.width * 0.9,
              52,
            ),
            elevation: 1,
            backgroundColor: CustomColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {},
        child: const Text(
          'Add Todo',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}




class SecondaryButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const SecondaryButton({
    super.key,
    required this.cs,
    required this.text,
    this.onPressed,
  });

  final Size cs;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        side: BorderSide(
          color: CustomColors.complementaryColor.withAlpha(100),
        ),
        backgroundColor: CustomColors.genericWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        minimumSize: Size.fromHeight(cs.height * 0.055),
        fixedSize: Size.fromWidth(cs.width * 0.9),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: CustomColors.complementaryColor.withAlpha(200),
        ),
      ),
    );
  }
}
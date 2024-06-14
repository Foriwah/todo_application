import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final int? maxlines;
  final void Function()? onTap;
  final bool? readOnly;
  final Widget? suffixIcon;
  const CustomFormField({
    super.key,
    required this.controller,
    required this.label,
    this.maxlines, this.onTap, this.readOnly, this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly ?? false,
      maxLines: maxlines ?? 1,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
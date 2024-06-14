

import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';

class ModalListTile extends StatelessWidget {
  final String title;
  final void Function() ontap;
  final String initials;
  final Widget? widget;
  const ModalListTile({
    super.key,
    required this.title,
    required this.ontap,
    required this.initials, this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(6)),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFD0D0D0),
                  offset: Offset(
                    4.0,
                    4.0,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                ),
              ],
              color: CustomColors.genericWhite,
            ),
            child: Center(
              child: Text(initials),
            ),
          ),
          trailing: widget,
          onTap: ontap,
          title: Text(
            title,
            style: const TextStyle(fontSize: 16,),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
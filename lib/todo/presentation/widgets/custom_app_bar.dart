
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';


AppBar customAppBar({String? title,required BuildContext context}) {

  return AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            color: CustomColors.genericBlack,
          ),
        ),
        backgroundColor: CustomColors.background,
        elevation: 0,
        centerTitle: true,
        title: Text(
          title!,
          style: TextStyle(
              color: CustomColors.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w600),
        ),
        );
}
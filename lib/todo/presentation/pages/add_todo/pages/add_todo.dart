import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dueDateController = TextEditingController();
  final TextEditingController priorityController = TextEditingController();
  final TextEditingController startTimeController = TextEditingController();
  final TextEditingController endTimeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      appBar: AppBar(
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
          'Add A Todo',
          style: TextStyle(
              color: CustomColors.primaryColor,
              fontSize: 24,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView(
          children: [
            CustomFormField(
              controller: titleController,
              label: 'Title',
            ),
           const  SizedBox(
              height: 10,
            ),
            CustomFormField(
              controller: descriptionController,
              label: 'Description',
              maxlines: 3,
            ),const  SizedBox(
              height: 10,
            ),
             CustomFormField(
              controller: dueDateController,
              label: 'Due Date',
            ),
            const  SizedBox(
              height: 10,
            ),
             CustomFormField(
              controller: priorityController,
              label: 'Priority',
            ),
          ],
        ),
      ),
      //ottomSheet: ,
    );
  }
}

class CustomFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final int? maxlines;
  const CustomFormField({
    super.key,
    required this.controller,
    required this.label, this.maxlines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines ?? 1,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}

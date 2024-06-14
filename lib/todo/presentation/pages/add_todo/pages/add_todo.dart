import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';
import 'package:my_todo_app/core/utils/data_list.dart';
import 'package:my_todo_app/todo/presentation/widgets/buttons.dart';
import 'package:my_todo_app/todo/presentation/widgets/custom_formfield.dart';
import 'package:my_todo_app/todo/presentation/widgets/modal_listtile.dart';

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
  final TextEditingController categoryController = TextEditingController();
   bool showTime = false;
  @override
  Widget build(BuildContext context) {
    final cs = MediaQuery.of(context).size;
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
            const SizedBox(
              height: 10,
            ),
            CustomFormField(
              controller: descriptionController,
              label: 'Description',
              maxlines: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormField(
              controller: dueDateController,
              label: 'Due Date',
              readOnly: true,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2101),
                );
                if (mounted) {
                  String formattedDate = DateFormat.yMEd().format(pickedDate!);
                  setState(() {
                    dueDateController.text = formattedDate;
                  });
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormField(
              controller: priorityController,
              label: 'Priority',
              readOnly: true,
              suffixIcon: const Icon(
                CupertinoIcons.chevron_down,
                size: 20,
              ),
              onTap: () async {
                final value = await showModalBottomSheet(
                  context: context,
                  builder: (context) => SafeArea(
                    child: Wrap(
                      children: List.generate(
                        priorityList.length,
                        (index) => ModalListTile(
                          title: priorityList[index],
                          ontap: () {
                            Navigator.pop(
                              context,
                              priorityList[index],
                            );
                          },
                          initials: priorityList[index][0],
                        ),
                      ),
                    ),
                  ),
                );
                setState(() {
                  priorityController.text = value;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFormField(
              controller: categoryController,
              label: 'Category',
            ),
           
           
            const SizedBox(
              height: 30,
            ),
            if(showTime == true)
            Row(
              children: [
                Expanded(
                    child: CustomFormField(
                  controller: startTimeController,
                  label: 'Start Time',
                )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: CustomFormField(
                  controller: startTimeController,
                  label: 'End Time',
                )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
             SecondaryButton(
              cs: cs,
              text: showTime?'Hide Time Field':'Show Time Field',
              onPressed: () {
                setState(() {
                  showTime = !showTime;
                });
              },
            ),
          ],
        ),
      ),
      bottomSheet: BottomSheetButton(cs: cs),
    );
  }
}

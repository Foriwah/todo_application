import 'package:flutter/material.dart';
import 'package:my_todo_app/core/utils/custom_colors.dart';
import 'package:my_todo_app/todo/presentation/widgets/custom_heading.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyCalendar extends StatefulWidget {
  const MyCalendar({super.key});

  @override
  State<MyCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: CustomColors.background,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
                height: 20,
              ),
              const DefaultHeading(
                text: 'Calendar',
              ),
              const SizedBox(
                height: 20,
              ),
              SfCalendar(
           
          view: CalendarView.month,
          
          todayHighlightColor: CustomColors.primaryColor,
          monthViewSettings: MonthViewSettings(
        
            numberOfWeeksInView: 2,
            monthCellStyle: MonthCellStyle(
             todayBackgroundColor: CustomColors.primaryColor.withAlpha(120)
            ),
            showAgenda: true,
            agendaItemHeight: 70,
          ),
        ),
          ],
        ),
      ),
    ));
  }
}

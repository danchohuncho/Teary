import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat format = CalendarFormat.week;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      headerVisible: false,
      availableCalendarFormats: const {
        CalendarFormat.month: 'Месяц',
        CalendarFormat.week: 'Неделя',
      },
      locale: 'ru_RU',
      focusedDay: selectedDay,
      firstDay: DateTime(1990),
      lastDay: DateTime(2030),
      calendarFormat: format,
      onFormatChanged: (CalendarFormat _format) {
        setState(() {
          format = _format;
        });
      },
      startingDayOfWeek: StartingDayOfWeek.monday,
      daysOfWeekVisible: true,

      //Day changed
      onDaySelected: (DateTime selectDay, DateTime focusDay) {
        setState(() {
          selectedDay = selectDay;
          focusedDay = focusDay;
        });
        print(focusedDay);
      },
      selectedDayPredicate: (DateTime date) {
        return isSameDay(selectedDay, date);
      },

      //To style calendar
      calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        selectedDecoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
        selectedTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        todayDecoration: BoxDecoration(
          color: Colors.purpleAccent,
          shape: BoxShape.circle,
        ),
        todayTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),

        defaultTextStyle: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        weekendTextStyle: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w500),
        holidayTextStyle: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.w500),
        outsideTextStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        rangeStartTextStyle: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),
      ),
      headerStyle: HeaderStyle(
        titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
        formatButtonVisible: false,
        leftChevronVisible: false,
        rightChevronVisible: false,
        titleCentered: true,
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        weekendStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
    );
  }
}

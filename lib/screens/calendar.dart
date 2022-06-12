import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../utilities/colors.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SfCalendar(
          view: CalendarView.week,
          dataSource: TravelDataSource(getAppointments()),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(100),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                      color: primaryColor, shape: BoxShape.circle),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: whiteColor,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      color: primaryColor,
      subject: "Visit Parks"));

  return meetings;
}

class TravelDataSource extends CalendarDataSource {
  TravelDataSource(List<Appointment> source) {
    appointments = source;
  }
}

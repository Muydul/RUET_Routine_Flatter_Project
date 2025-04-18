// creating a table that can be used for all years

import 'package:flutter/material.dart';
import 'package:ruet_cse/variables.dart';
import 'package:ruet_cse/custom_widget.dart';

class first_saturday extends StatelessWidget {
  // first year in saturday
  const first_saturday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Color.fromARGB(255, 245, 113, 103),
        child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(children: [
              // heading of the table
              table_heading("Section =>", Color.fromARGB(255, 245, 113, 103)),
              table_heading("Section A", Color.fromARGB(255, 51, 190, 74)),
              table_heading("Section B", Color.fromARGB(255, 99, 132, 252)),
              table_heading("Section C", Color.fromARGB(255, 242, 102, 195))
            ]),
            TableRow(children: [
              // first period
              period_time("8.00 - 8.50",
                  Color.fromARGB(255, 245, 113, 103)), // class time
              subject_teacher_and_room_no(Color.fromARGB(255, 51, 190, 74),
                  'first year', 'saturday', 'section a', '1'), // section A
              subject_teacher_and_room_no(Color.fromARGB(255, 99, 132, 252),
                  'first year', 'saturday', 'section b', '1'), // section B
              subject_teacher_and_room_no(Color.fromARGB(255, 242, 102, 195),
                  'first year', 'saturday', 'section c', '1'), // section C
            ]),
            TableRow(children: [
              // second period
              period_time("8.50 - 9.40",
                  Color.fromARGB(255, 245, 113, 103)), // class time
              subject_teacher_and_room_no(Color.fromARGB(255, 51, 190, 74),
                  'first year', 'saturday', 'section a', '2'), // section A
              subject_teacher_and_room_no(Color.fromARGB(255, 99, 132, 252),
                  'first year', 'saturday', 'section b', '2'), // section B
              subject_teacher_and_room_no(Color.fromARGB(255, 242, 102, 195),
                  'first year', 'saturday', 'section c', '2'), // section C
            ]),
            TableRow(children: [
              // third period
              period_time("9.40 - 10.30",
                  Color.fromARGB(255, 245, 113, 103)), // class time
              subject_teacher_and_room_no(Color.fromARGB(255, 51, 190, 74),
                  'first year', 'saturday', 'section a', '3'), // section A
              subject_teacher_and_room_no(Color.fromARGB(255, 99, 132, 252),
                  'first year', 'saturday', 'section b', '3'), // section B
              subject_teacher_and_room_no(Color.fromARGB(255, 242, 102, 195),
                  'first year', 'saturday', 'section c', '3'), // section C
            ]),
            TableRow(children: [
              // fourth period
              period_time("10.50 - 11.40",
                  Color.fromARGB(255, 245, 113, 103)), // class time
              subject_teacher_and_room_no(Color.fromARGB(255, 51, 190, 74),
                  'first year', 'saturday', 'section a', '4'), // section A
              subject_teacher_and_room_no(Color.fromARGB(255, 99, 132, 252),
                  'first year', 'saturday', 'section b', '4'), // section B
              subject_teacher_and_room_no(Color.fromARGB(255, 242, 102, 195),
                  'first year', 'saturday', 'section c', '4'), // section C
            ]),
            TableRow(children: [
              // fifth period
              period_time("11.40 - 12.30",
                  Color.fromARGB(255, 245, 113, 103)), // class time
              subject_teacher_and_room_no(Color.fromARGB(255, 51, 190, 74),
                  'first year', 'saturday', 'section a', '5'), // section A
              subject_teacher_and_room_no(Color.fromARGB(255, 99, 132, 252),
                  'first year', 'saturday', 'section b', '5'), // section B
              subject_teacher_and_room_no(Color.fromARGB(255, 242, 102, 195),
                  'first year', 'saturday', 'section c', '5'), // section C
            ]),
            TableRow(children: [
              // sixth period
              period_time("12.30 - 1.20",
                  Color.fromARGB(255, 245, 113, 103)), // class time
              subject_teacher_and_room_no(Color.fromARGB(255, 51, 190, 74),
                  'first year', 'saturday', 'section a', '6'), // section A
              subject_teacher_and_room_no(Color.fromARGB(255, 99, 132, 252),
                  'first year', 'saturday', 'section b', '6'), // section B
              subject_teacher_and_room_no(Color.fromARGB(255, 242, 102, 195),
                  'first year', 'saturday', 'section c', '6'), // section C
            ]),
            TableRow(children: [
              // seventh period
              period_time("2.30 - 3.20",
                  Color.fromARGB(255, 245, 113, 103)), // class time
              subject_teacher_and_room_no(Color.fromARGB(255, 51, 190, 74),
                  'first year', 'saturday', 'section a', '7'), // section A
              subject_teacher_and_room_no(Color.fromARGB(255, 99, 132, 252),
                  'first year', 'saturday', 'section b', '7'), // section B
              subject_teacher_and_room_no(Color.fromARGB(255, 242, 102, 195),
                  'first year', 'saturday', 'section c', '7'), // section C
            ]),
            TableRow(children: [
              // eighth period
              period_time("3.20 - 4.10",
                  Color.fromARGB(255, 245, 113, 103)), // class time
              subject_teacher_and_room_no(Color.fromARGB(255, 51, 190, 74),
                  'first year', 'saturday', 'section a', '8'), // section A
              subject_teacher_and_room_no(Color.fromARGB(255, 99, 132, 252),
                  'first year', 'saturday', 'section b', '8'), // section B
              subject_teacher_and_room_no(Color.fromARGB(255, 242, 102, 195),
                  'first year', 'saturday', 'section c', '8'), // section C
            ]),
            TableRow(children: [
              // nineth period
              period_time("4.10 - 5.00",
                  Color.fromARGB(255, 245, 113, 103)), // class time
              subject_teacher_and_room_no(Color.fromARGB(255, 51, 190, 74),
                  'first year', 'saturday', 'section a', '9'), // section A
              subject_teacher_and_room_no(Color.fromARGB(255, 99, 132, 252),
                  'first year', 'saturday', 'section b', '9'), // section B
              subject_teacher_and_room_no(Color.fromARGB(255, 242, 102, 195),
                  'first year', 'saturday', 'section c', '9'), // section C
            ]),
          ],
        ),
      ),
    );
  }
}

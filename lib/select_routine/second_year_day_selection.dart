import 'package:flutter/material.dart';
import 'package:ruet_cse/admin/admin_drawer.dart';
import 'package:ruet_cse/animation.dart';
import 'package:ruet_cse/select_routine/first_year.dart';
import 'package:ruet_cse/select_routine/second_year.dart';

class second_year_day_selection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Routine of Second Year'),
        centerTitle: true,
      ),
      drawer: second_year_drawer(),
    );
  }
}

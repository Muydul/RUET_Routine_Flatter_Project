import 'package:flutter/material.dart';
import 'package:ruet_cse/admin/admin_drawer.dart';
import 'package:ruet_cse/animation.dart';
import 'package:ruet_cse/select_routine/first_year.dart';
import 'third_year.dart';

class third_year_day_selection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Routine of Third Year'),
        centerTitle: true,
      ),
      drawer: third_year_drawer(),
    );
  }
}

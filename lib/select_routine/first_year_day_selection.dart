import 'package:flutter/material.dart';
import 'package:ruet_cse/admin/admin_drawer.dart';
import 'package:ruet_cse/animation.dart';
import 'package:ruet_cse/select_routine/first_year.dart';

class first_year_day_selection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Routine of first year'),
        centerTitle: true,
      ),
      drawer: first_year_drawer(),
    );
  }
}

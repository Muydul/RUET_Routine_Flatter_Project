import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruet_cse/admin/admin_faculty_member.dart';
import 'package:ruet_cse/admin/admin_drawer.dart';
import 'package:ruet_cse/admin/admin_notice.dart';
import 'package:ruet_cse/admin/admin_routine.dart';
import 'package:ruet_cse/admin/update_admin.dart';

class admin_home extends StatefulWidget {
  const admin_home({Key? key}) : super(key: key);

  @override
  State<admin_home> createState() => _admin_homeState();
}

class _admin_homeState extends State<admin_home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RUET CSE", style: TextStyle(fontWeight: FontWeight.bold),),
      backgroundColor: Color.fromARGB(255, 240, 74, 163),
      centerTitle: true,
      ),
      drawer: admin_home_drawer() ,
    );
  }
}

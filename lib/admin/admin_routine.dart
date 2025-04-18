import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ruet_cse/admin/admin_drawer.dart';
import 'package:ruet_cse/select_routine/first_year_day_selection.dart';
import 'package:ruet_cse/select_routine/fourth_year_day_selection.dart';
import 'package:ruet_cse/select_routine/second_year_day_selection.dart';
import 'package:ruet_cse/select_routine/third_year_day_selection.dart';


class admin_routine extends StatelessWidget {
  const admin_routine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Select Year'),
          centerTitle: true,
        ),
        drawer: admin_home_drawer(),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 122, 55, 86),
      child: MaterialButton(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => first_year_day_selection()));
            },
            child: const Text(
              "First Year",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ),

      SizedBox(height: 15,),

      Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 122, 55, 86),
      child: MaterialButton(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => second_year_day_selection()));},
            child: const Text(
              "Second Year",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ),
      SizedBox(height: 15,),

      Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 122, 55, 86),
      child: MaterialButton(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            onPressed: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => third_year_day_selection()));},
            child: const Text(
              "Third Year",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ),
      
      SizedBox(height: 15,),

      Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 122, 55, 86),
      child: MaterialButton(
            padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
            minWidth: MediaQuery.of(context).size.width,
            onPressed: () {
                  Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => fourth_year_day_selection()));},
            child: const Text(
              "Fourth Year",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
            )),
      ),

            ],
          ),
        ),
    );
  }
}


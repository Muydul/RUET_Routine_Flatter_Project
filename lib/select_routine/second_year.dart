import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ruet_cse/admin/admin_drawer.dart';
import '../days/saturday.dart';

class second_Saturday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Year Saturday "), centerTitle: true,),
      drawer: second_year_drawer(),
     // body: second_saturday(),
    );
  }
}
class second_Sunday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Year Sunday"), centerTitle: true,),
      drawer: second_year_drawer(),
    );
  }
}
class second_Monday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Year Monday"), centerTitle: true,),
      drawer: second_year_drawer(),
    );
  }
}

class second_Tuesday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Year Tuesday"), centerTitle: true,),
      drawer: second_year_drawer(),
    );
  }
}

class second_Wednesday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Year Wednesday"), centerTitle: true,),
      drawer: second_year_drawer(),
    );
  }
}


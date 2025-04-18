import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ruet_cse/admin/admin_drawer.dart';
import '../days/saturday.dart';

class first_Saturday extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Year Saturday "), centerTitle: true,),
      drawer: first_year_drawer(),
      body: first_saturday(),
    );
  }
}
class first_Sunday extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Year Sunday"), centerTitle: true,),
      drawer: first_year_drawer(),
    );
  }
}
class first_Monday extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Year Monday"), centerTitle: true,),
      drawer: first_year_drawer(),
    );
  }
}


class first_Tuesday extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Year Tuesday"), centerTitle: true,),
      drawer: first_year_drawer(),
    );
  }
}


class first_Wednesday extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Year Wednesday"), centerTitle: true,),
      drawer: first_year_drawer(),
    );
  }
}
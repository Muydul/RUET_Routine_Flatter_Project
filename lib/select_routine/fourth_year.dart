import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ruet_cse/admin/admin_drawer.dart';
import '../days/saturday.dart';

class fourth_Saturday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fourth Year Saturday "), centerTitle: true,),
      drawer: fourth_year_drawer(),
      //body: fourth_saturday(),
    );
  }
}
class fourth_Sunday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fourth Year Sunday"), centerTitle: true,),
      drawer: fourth_year_drawer(),
    );
  }
}
class fourth_Monday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fourth Year Monday"), centerTitle: true,),
      drawer: fourth_year_drawer(),
    );
  }
}

class fourth_Tuesday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fourth Year Tuesday"), centerTitle: true,),
      drawer: fourth_year_drawer(),
    );
  }
}

class fourth_Wednesday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fourth Year Wednesday"), centerTitle: true,),
      drawer: fourth_year_drawer(),
    );
  }
}


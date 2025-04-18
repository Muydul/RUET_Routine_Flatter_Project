import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ruet_cse/admin/admin_drawer.dart';
import '../days/saturday.dart';

class third_Saturday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Year Saturday "), centerTitle: true,),
      drawer: third_year_drawer(),
      //body: third_saturday(),
    );
  }
}
class third_Sunday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Year Sunday"), centerTitle: true,),
      drawer: third_year_drawer(),
    );
  }
}
class third_Monday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Year Monday"), centerTitle: true,),
      drawer: third_year_drawer(),
    );
  }
}

class third_Tuesday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Year Tuesday"), centerTitle: true,),
      drawer: third_year_drawer(),
    );
  }
}

class third_Wednesday extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Third Year Wednesday"), centerTitle: true,),
      drawer: third_year_drawer(),
    );
  }
}


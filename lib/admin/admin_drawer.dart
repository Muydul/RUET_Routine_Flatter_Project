import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ruet_cse/admin/admin_home.dart';
import 'package:ruet_cse/admin/admin_notice.dart';
import 'package:ruet_cse/admin/admin_routine.dart';
import 'package:ruet_cse/admin/update_admin.dart';
import 'package:ruet_cse/main.dart';
import 'package:ruet_cse/select_routine/first_year.dart';
import 'package:ruet_cse/select_routine/fourth_year.dart';
import 'package:ruet_cse/select_routine/second_year.dart';
import 'package:ruet_cse/select_routine/third_year.dart';
import 'package:shared_preferences/shared_preferences.dart';

class admin_home_drawer extends StatefulWidget {
  const admin_home_drawer({Key? key}) : super(key: key);

  @override
  State<admin_home_drawer> createState() => _admin_home_drawerState();
}

class _admin_home_drawerState extends State<admin_home_drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: Center(
                  child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/ruet.png"),
                      ),
                    ),
                  ),
                  const Text(
                    "RUET CSE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'minhaz7553@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 14,
                    ),
                  ),
                ],
              )),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const admin_home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text(
                "Routine",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const admin_routine()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(
                "Notice",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => admin_notice()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration),
              title: const Text(
                "Achievements",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text(
                "Faculty Members",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.boy),
              title: const Text(
                "Students",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.album),
              title: const Text(
                "Alumny",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text(
                "Contact A Member",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.update),
              title: const Text(
                "Update Admin",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const update_admin()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Center(child: Text('Log Out')),
                        content: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              const Text(
                                'Do you want to log out?',
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: const Text(
                                      'No',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      FirebaseAuth.instance.signOut();
                                      Fluttertoast.showToast(msg: 'Signed Out');
                                      SharedPreferences prefs =
                                          await SharedPreferences.getInstance();
                                      prefs.remove('email');
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                              builder: (context) => app()),
                                          (Route<dynamic> route) => false);
                                    },
                                    child: const Text(
                                      'Yes',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class first_year_drawer extends StatefulWidget {
  const first_year_drawer({Key? key}) : super(key: key);

  @override
  State<first_year_drawer> createState() => _first_year_drawerState();
}

class _first_year_drawerState extends State<first_year_drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: Center(
                  child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/ruet.png"),
                      ),
                    ),
                  ),
                  const Text(
                    "RUET CSE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "minhaz7553@gmail.com",
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 14,
                    ),
                  ),
                ],
              )),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const admin_home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sunny),
              title: const Text(
                "Saturday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => first_Saturday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text(
                "Sunday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => first_Sunday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(
                "Monday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => first_Monday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration),
              title: const Text(
                "Tuesday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => first_Tuesday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text(
                "Wednesday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => first_Wednesday()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class second_year_drawer extends StatefulWidget {
  const second_year_drawer({Key? key}) : super(key: key);

  @override
  State<second_year_drawer> createState() => _second_year_drawerState();
}

class _second_year_drawerState extends State<second_year_drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: Center(
                  child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/ruet.png"),
                      ),
                    ),
                  ),
                  const Text(
                    "RUET CSE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "minhaz7553@gmail.com",
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 14,
                    ),
                  ),
                ],
              )),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const admin_home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sunny),
              title: const Text(
                "Saturday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => second_Saturday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text(
                "Sunday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => second_Sunday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(
                "Monday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => second_Monday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration),
              title: const Text(
                "Tuesday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => second_Tuesday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text(
                "Wednesday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => second_Wednesday()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class third_year_drawer extends StatefulWidget {
  const third_year_drawer({Key? key}) : super(key: key);

  @override
  State<third_year_drawer> createState() => _third_year_drawerState();
}

class _third_year_drawerState extends State<third_year_drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: Center(
                  child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/ruet.png"),
                      ),
                    ),
                  ),
                  const Text(
                    "RUET CSE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "minhaz7553@gmail.com",
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 14,
                    ),
                  ),
                ],
              )),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const admin_home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sunny),
              title: const Text(
                "Saturday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => third_Saturday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text(
                "Sunday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => third_Sunday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(
                "Monday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => third_Monday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration),
              title: const Text(
                "Tuesday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => third_Tuesday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text(
                "Wednesday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => third_Wednesday()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class fourth_year_drawer extends StatefulWidget {
  const fourth_year_drawer({Key? key}) : super(key: key);

  @override
  State<fourth_year_drawer> createState() => _fourth_year_drawerState();
}

class _fourth_year_drawerState extends State<fourth_year_drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: Colors.pinkAccent,
              child: Center(
                  child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 30, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("images/ruet.png"),
                      ),
                    ),
                  ),
                  const Text(
                    "RUET CSE",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "minhaz7553@gmail.com",
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 14,
                    ),
                  ),
                ],
              )),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text(
                "Home",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const admin_home()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.sunny),
              title: const Text(
                "Saturday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => fourth_Saturday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text(
                "Sunday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => fourth_Sunday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text(
                "Monday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => fourth_Monday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.celebration),
              title: const Text(
                "Tuesday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => fourth_Tuesday()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text(
                "Wednesday",
                style: TextStyle(fontSize: 17),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => fourth_Wednesday()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

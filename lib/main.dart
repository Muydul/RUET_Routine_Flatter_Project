import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ruet_cse/admin/admin_home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'admin/login.dart';
import 'explore/explore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');

  runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 240, 74, 163),
        focusColor: const Color.fromARGB(255, 240, 74, 163),
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Color.fromARGB(255, 240, 74, 163),
          iconColor: Color.fromARGB(255, 240, 74, 163),
        ),
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 240, 74, 163),
        ),
      ),
      home: email == null ? app() : admin_home()));
}

class app extends StatelessWidget {
  app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        //color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/ruet.png",
              height: 350,
              width: 350,
            ),
            const SizedBox(
              height: 10,
            ),
            const AutoSizeText(
              "Rajshahi University of Engineering & Technology",
              maxLines: 1,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Department of Computer Science & Engineering",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 240, 74, 163),
                        padding: const EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),

                      //color:

                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login()),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 240, 74, 163),
                        padding: const EdgeInsets.all(10.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const explore()),
                        );
                      },
                      child: const Text(
                        "Explore",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

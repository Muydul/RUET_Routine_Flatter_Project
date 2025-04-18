import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ruet_cse/admin/admin_drawer.dart';

class admin_notice extends StatefulWidget {
  admin_notice({Key? key}) : super(key: key);

  @override
  State<admin_notice> createState() => _admin_noticeState();
}

class _admin_noticeState extends State<admin_notice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notice page'),
      ),
      drawer: admin_home_drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            notice_widget(),
          ],
        ),
      ),
    );
  }
}

class notice_widget extends StatefulWidget {
  notice_widget({Key? key}) : super(key: key);

  @override
  State<notice_widget> createState() => _notice_widgetState();
}

class _notice_widgetState extends State<notice_widget> {
  String course_name = 'course';
  String course_teacher = 'teacher';
  String room_no = 'room';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection("first year")
        .doc("saturday")
        .collection('section a')
        .doc('3')
        .snapshots()
        .listen(
      (event) {
        final data = event.data() as Map<String, dynamic>;

        Fluttertoast.showToast(msg: 'Getting data in initstate');
        setState(() {
          course_name = data['course'];
          course_teacher = data['teacher'];
          room_no = data['room'];
        });
      },
      onError: (error) => print("Listen failed: $error"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Container(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0),
          child: Column(
            children: [
              AutoSizeText(
                course_name,
                maxLines: 1,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black),
              ),
              AutoSizeText(
                course_teacher,
                maxLines: 1,
                style: const TextStyle(color: Colors.black),
              ),
              AutoSizeText(
                room_no,
                maxLines: 1,
                style: const TextStyle(color: Colors.black),
              ),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      FirebaseFirestore.instance
                          .collection("notice")
                          .doc("for_first")
                          .get()
                          .then((DocumentSnapshot data) {
                        if (data.exists) {
                          setState(() {
                            course_name = data['first'];
                            course_teacher = data['second'];
                            room_no = data['third'];
                          });
                        } else {
                          Fluttertoast.showToast(msg: 'Data not found');
                        }
                      });
                    });
                  }),
                  child: Text('Press')),
            ],
          ),
        ),
      ),
    );
  }
}

// void get_data() {
//   final docRef =
//       FirebaseFirestore.instance.collection("notice").doc("for_first");
//   docRef.get().then(
//     (DocumentSnapshot doc) {
//       var data = doc.data() as Map<String, dynamic>;
//       course_name:
//       data['first'];
//       course_teacher:
//       data['second'];
//       room_no:
//       data['third'];
//       print(data['first'].toString());
//       Fluttertoast.showToast(msg: data['first']);
//     },
//     onError: (e) => print("Error getting document: $e"),
//   );
// }

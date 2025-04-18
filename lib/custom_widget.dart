import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ruet_cse/model/user_model.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

// heading row for the table
class table_heading extends StatelessWidget {
  String show;
  dynamic background_color;
  table_heading(this.show, this.background_color);

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Container(
        color: background_color,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0),
          child: Column(
            children: [
              AutoSizeText(
                show,
                maxLines: 1,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// updating the routine from taking information from the admin and aslo sending it to database

class subject_teacher_and_room_no extends StatefulWidget {
  String year;
  String day;
  String section;
  dynamic period;
  var background_color;

  subject_teacher_and_room_no(
    this.background_color,
    this.year,
    this.day,
    this.section,
    this.period,
  );

  @override
  State<subject_teacher_and_room_no> createState() =>
      _subject_teacher_and_room_noState();
}

class _subject_teacher_and_room_noState
    extends State<subject_teacher_and_room_no> {
  String course_name = 'subject';
  String course_teacher = 'teacher';
  String room_no = 'room';

  TextEditingController course_controller = TextEditingController();
  TextEditingController teacher_controller = TextEditingController();
  TextEditingController room_controller = TextEditingController();

  // reading data from server

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      final docRef = firebaseFirestore
          .collection("cse")
          .doc("routine")
          .collection(widget.year)
          .doc(widget.day)
          .collection(widget.section)
          .doc('period ${widget.period}');
      docRef.snapshots().listen(
        (event) {
          final data = event.data() as Map<String, dynamic>;
          setState(() {
            course_name = data['course'];
            course_teacher = data['teacher'];
            room_no = data['room'];
          });
          Fluttertoast.showToast(msg: 'In initstate');
        },
        onError: (error) =>
            Fluttertoast.showToast(msg: "Listen failed: $error"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: GestureDetector(
        onDoubleTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  scrollable: true,
                  title: const Text('Update Routine'),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Course title',
                              icon: Icon(Icons.account_box),
                            ),
                            controller: course_controller,
                            textInputAction: TextInputAction.next,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Course Teacher',
                              icon: Icon(Icons.email),
                            ),
                            controller: teacher_controller,
                            textInputAction: TextInputAction.next,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Room no',
                              icon: Icon(Icons.room),
                            ),
                            controller: room_controller,
                            textInputAction: TextInputAction.done,
                          ),
                        ],
                      ),
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 240, 74, 163),
                        ),
                        child: const Text("Submit"),
                        onPressed: () async {
                          Navigator.of(context)
                              .pop(); // popping the dialog box. routine will update in the background if device is not online

                          await firebaseFirestore
                              .collection('cse')
                              .doc('routine')
                              .collection(widget.year)
                              .doc(widget.day)
                              .collection(widget.section)
                              .doc('period ${widget.period}')
                              .set({
                            'course': course_controller.text,
                            'teacher': teacher_controller.text,
                            'room': room_controller.text,
                          }).then((value) => Fluttertoast.showToast(
                                          msg: "Routine Updated Successfully")
                                      .catchError((e) {
                                    Fluttertoast.showToast(msg: e!.massage);
                                  }));
                        })
                  ],
                );
              });
        },
        child: Container(
          color: widget.background_color,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0),
            child: Column(
              children: [
                AutoSizeText(
                  course_name.toString(),
                  maxLines: 1,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                AutoSizeText(
                  course_teacher.toString(),
                  maxLines: 1,
                  style: const TextStyle(color: Colors.black),
                ),
                AutoSizeText(
                  room_no.toString(),
                  maxLines: 1,
                  style: const TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class period_time extends StatelessWidget {
  String time;
  var background_color;
  period_time(this.time, this.background_color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCell(
        verticalAlignment: TableCellVerticalAlignment.middle,
        child: Container(
          color: background_color,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(4.0, 8.0, 4.0, 8.0),
            child: Column(
              children: [
                AutoSizeText(
                  time,
                  maxLines: 1,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ],
            ),
          ),
        ));
  }
}

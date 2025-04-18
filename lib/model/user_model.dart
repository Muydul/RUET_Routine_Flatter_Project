import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? uid;
  String? email;
  String? Name;

  UserModel({this.uid, this.email, this.Name});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      Name: map['Name'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': Name,
    };
  }
}


class ClassRoutine{
  String? course;
  String? teacher;
  String? room;
  
  ClassRoutine({this.course, this.teacher, this.room});
  // receiving data from server

   factory ClassRoutine.fromFirestore( 
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return ClassRoutine(
      course: data?['course'],
      teacher: data?['teacher'],
      room: data?['room'],
    );
  }

   //sending data to server
   Map<String, dynamic> toFirestore() {
    return {
      if (course != null) "course": course,
      if (teacher != null) "teacher": teacher,
      if (room != null) "room": room,
      
    };
  }
}

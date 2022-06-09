import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @injectable
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  @injectable
  FirebaseAuth get auth => FirebaseAuth.instance;
}

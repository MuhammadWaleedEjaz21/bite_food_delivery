import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseConn {
  final auth = FirebaseAuth.instance;
  late final user = auth.currentUser;
  CollectionReference<Map<String, dynamic>> connection(String collection) {
    return FirebaseFirestore.instance.collection(collection);
  }
}

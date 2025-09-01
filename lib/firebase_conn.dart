import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

final firebaseAuth = FirebaseAuth.instance;
final user = firebaseAuth.currentUser;

Future<CollectionReference<Map<String, dynamic>>> database(
  String collection,
) async {
  return FirebaseFirestore.instance.collection(collection);
}

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {

  final FirebaseFirestore _firestore =
      FirebaseFirestore.instance;

  Future<void> saveUser({
    required String uid,
    required String name,
    required String email,
    required String phone,
    required String location,
  }) async {

    await _firestore
        .collection('users')
        .doc(uid)
        .set({

      'name': name,
      'email': email,
      'phone': phone,
      'location': location,
      'imageUrl': '',
      'createdAt':
          FieldValue.serverTimestamp(),
    });
  }
}
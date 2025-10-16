import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:mvvm/core/model/app_user.dart';

class DatabaseServices {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  registerAppUser(AppUser user) async {
    debugPrint("User @Id => ${user.id}");
    try {
      await _db
          .collection('app_user')
          .doc(user.id)
          .set(user.toJson())
          .then((value) => debugPrint('user registered successfully'));
    } catch (e, s) {
      debugPrint('Exception @DatabaseService/registerAppUser $e');
      debugPrint(s.toString());
      return false;
    }
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: camel_case_types

 accountServices acServices = accountServices();
class accountServices {
// read account in store in cloud firebase

  final CollectionReference _collectionRef =
      FirebaseFirestore.instance.collection("Account");

  Future<void> getData() async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await _collectionRef.get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
  }
}

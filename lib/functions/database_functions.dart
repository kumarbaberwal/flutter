// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

create(BuildContext context, String colName, String docName, String name,
    String animal, int age) async {
  await FirebaseFirestore.instance
      .collection(colName)
      .doc(docName)
      .set({'name': name, 'animal': animal, 'age': age});
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(milliseconds: 1000),
    margin: const EdgeInsets.all(15),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.yellow,
    padding: const EdgeInsets.all(15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: const Text(
      'Database Saved',
      style: TextStyle(color: Colors.black),
    ),
  ));
}

update(BuildContext context, String colName, String docName, String field,
    var newFieldValue) async {
  FirebaseFirestore.instance
      .collection(colName)
      .doc(docName)
      .update({field: newFieldValue});
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(milliseconds: 1000),
    margin: const EdgeInsets.all(15),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.yellow,
    padding: const EdgeInsets.all(15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: const Text(
      'Database Updated',
      style: TextStyle(color: Colors.black),
    ),
  ));
}

delete(BuildContext context, String colName, String docName) async {
  FirebaseFirestore.instance.collection(colName).doc(docName).delete();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: const Duration(milliseconds: 1000),
    margin: const EdgeInsets.all(15),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.yellow,
    padding: const EdgeInsets.all(15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: const Text(
      'Database Deleted',
      style: TextStyle(color: Colors.black),
    ),
  ));
}

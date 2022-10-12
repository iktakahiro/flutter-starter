import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UICoupledWithInfra extends StatelessWidget {
  const UICoupledWithInfra({required this.bookId, super.key}) : super();

  final String bookId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFirestore.instance.collection('books').doc(bookId).get(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const Text('book found!');
        }
        if (snapshot.hasError) {
          return const Text('error');
        }
        return const Text('now loading...');
      },
    );
  }
}

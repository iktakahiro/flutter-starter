import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_starter/domain/book.dart';
import 'package:flutter_starter/domain/book_repository.dart';
import 'package:flutter_starter/infrastructure/firestore/book_dto.dart';

/// [FirestoreBookRepository] implements of [BookRepository] with Firestore.
class FirestoreBookRepository implements BookRepository {
  @override
  Future<Book?> findById(String id) async {
    final snapshot = await FirebaseFirestore.instance
        .collection(FirestoreBookDTO.collectionPath)
        .doc(id)
        .get();

    return FirestoreBookDTO.fromSnapshot(snapshot).toEntity();
  }

  @override
  Future<List<Book>> findAll() async {
    final querySnapshot = await FirebaseFirestore.instance
        .collection(FirestoreBookDTO.collectionPath)
        .get();

    return querySnapshot.docs
        .map((doc) => FirestoreBookDTO.fromSnapshot(doc).toEntity())
        .toList();
  }

  @override
  Future<void> save(Book book) async {
    return FirebaseFirestore.instance
        .collection(FirestoreBookDTO.collectionPath)
        .doc(book.id)
        .set(
          FirestoreBookDTO.fromEntity(book).toJson(),
          SetOptions(merge: true),
        );
  }
}

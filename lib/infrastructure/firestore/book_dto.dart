import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_starter/domain/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_dto.freezed.dart';
part 'book_dto.g.dart';

@freezed
class FirestoreBookDTO with _$FirestoreBookDTO {
  const factory FirestoreBookDTO({
    required String id,
    required String title,
  }) = _FirestoreBookDTO;

  const FirestoreBookDTO._();

  static const collectionPath = 'books';

  factory FirestoreBookDTO.fromJson(Map<String, dynamic> json) =>
      _$FirestoreBookDTOFromJson(Map<String, dynamic>.from(json));

  factory FirestoreBookDTO.fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    final json = {
      'id': snapshot.id,
      ...Map<String, dynamic>.from(snapshot.data()!),
    };
    return FirestoreBookDTO.fromJson(json);
  }

  factory FirestoreBookDTO.fromEntity(Book book) => FirestoreBookDTO(
        id: book.id,
        title: book.title,
      );

  Book toEntity() {
    return Book(
      id: id,
      title: title,
    );
  }
}

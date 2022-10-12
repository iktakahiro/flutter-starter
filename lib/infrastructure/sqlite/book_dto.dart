import 'package:flutter_starter/domain/book.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_dto.freezed.dart';
part 'book_dto.g.dart';

@freezed
class SQLiteBookDTO with _$SQLiteBookDTO {
  const factory SQLiteBookDTO({
    required String id,
    required String title,
  }) = _SQLiteBookDTO;

  static const tableName = 'book';
  static const columnId = 'id';
  static const columnTitle = 'title';

  static const columns = [columnId, columnTitle];

  const SQLiteBookDTO._();

  factory SQLiteBookDTO.fromJson(Map<String, dynamic> json) =>
      _$SQLiteBookDTOFromJson(Map<String, dynamic>.from(json));

  factory SQLiteBookDTO.fromEntity(Book book) => SQLiteBookDTO(
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

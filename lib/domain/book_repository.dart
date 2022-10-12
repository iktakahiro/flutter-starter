import 'package:flutter_starter/domain/book.dart';

/// [BookRepository] defines an interface of a repository for [Book].
abstract class BookRepository {
  Future<Book?> findById(String id);
  Future<List<Book>> findAll();
  Future<void> save(Book book);
}

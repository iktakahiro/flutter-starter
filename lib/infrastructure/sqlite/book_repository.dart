import 'package:flutter_starter/domain/book.dart';
import 'package:flutter_starter/domain/book_repository.dart';
import 'package:flutter_starter/infrastructure/sqlite/book_dto.dart';
import 'package:sqflite/sqflite.dart';

/// [SQLiteBookRepository] implements of [BookRepository] with SQLite.
class SQLiteBookRepository implements BookRepository {
  late Database db;

  @override
  Future<Book?> findById(String id) async {
    final rows = await db.query(
      SQLiteBookDTO.tableName,
      columns: SQLiteBookDTO.columns,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (rows.isEmpty) {
      return null;
    }
    return SQLiteBookDTO.fromJson(rows.first).toEntity();
  }

  @override
  Future<List<Book>> findAll() async {
    final rows = await db.query(
      SQLiteBookDTO.tableName,
      columns: SQLiteBookDTO.columns,
    );
    return rows.map((doc) => SQLiteBookDTO.fromJson(doc).toEntity()).toList();
  }

  @override
  Future<void> save(Book book) async {
    await db.insert(
      SQLiteBookDTO.tableName,
      SQLiteBookDTO.fromEntity(book).toJson(),
    );
    return;
  }

  Future open(String path) async {
    db = await openDatabase(path,
        version: 1, onCreate: (Database db, int version) async {});
  }
}

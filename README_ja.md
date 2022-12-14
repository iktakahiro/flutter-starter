# Flutter Starter - for your next project ð

[En](./README.md) | **æ¥æ¬èª**

## ãã®ãªãã¸ããªã«ã¤ãã¦

Flutter ãã­ã¸ã§ã¯ãã **ãªããªã³ã»ã¢ã¼ã­ãã¯ãã£** ã§ã¯ãããã¹ã¿ã¼ã¿ã¼ã»ã­ããã¨ãã¦ã®ãµã³ãã«ã³ã¼ãã§ãã

*å¨ä½çã« Work in Progress ã§ãããã¢ããªã¨ãã¦ã¯ã¾ã åä½ãããã¾ãããé æ¬¡ã¢ãããã¼ãäºå®ã§ãã*

## æè¡ã¹ã¿ãã¯

* Flutter v3.3
* Riverpod
  * [riverpod](https://pub.dev/packages/riverpod)
  * [hooks_riverpod](https://pub.dev/packages/hooks_riverpod)
* Firestore
  * [cloud_firestore](https://pub.dev/packages/cloud_firestore)
* SQLite
  * [sqflite](https://pub.dev/packages/sqflite)
* ã»ãããããªããã±ã¼ã¸
  * [freezed](https://pub.dev/packages/freezed)
  * [get_it](https://pub.dev/packages/get_it)

## ãªããªã³ã¢ã¼ã­ãã¯ãã£ã«ã¤ãã¦

## ãªããªã³ã»ã¢ã¼ã­ãã¯ãã£ã¨ Flutter/Dart

Flutter/Dart ã®ãã­ã¸ã§ã¯ãã«ããã¦ããªããªã³ã»ã¢ã¼ã­ãã¯ãã£ãæ¡ç¨ãããã¨ã¯å¯è½ã§ããDart ã®æã¤ãªãã¸ã§ã¯ãæåè¨èªã¨ãã¦ã®æ§è³ªãå©ç¨ãããã¨ã§ã

### ãã¡ã¤ã³

ãã¡ã¤ã³ã¢ãã«ã«é¢ããç¥è­ãè¡¨ç¾ããã®ããã¡ã¤ã³å±¤ã®è²¬åã§ãã

* ã¨ã³ãã£ãã£

ã¨ã³ãã£ãã£ã Dart ã§è¡¨ç¾ããããã«ã[equatable](https://pub.dev/packages/equatable) ãå©ç¨ãã¦ãªãã¸ã§ã¯ãã®åä¸æ§ãå®ç¾©ã§ãã¾ãã

æ¬¡ã®ä¾ã§ã¯ã`Book` ã¯ã©ã¹ã® `id` ãã­ããã£ã®ã¿ã§ãªãã¸ã§ã¯ãã®åä¸æ§ãè¡¨ç¾ãã¦ãã¾ãã

```dart
class Book with EquatableMixin {
  const Book({
    required this.id,
    required this.title,
  });

  @override
  List<Object> get props => [id];

  final String id;
  final String title;
}
```

* ããªã¥ã¼ã»ãªãã¸ã§ã¯ã

*TBD*

* ãªãã¸ããªï¼ã¤ã³ã¿ã¼ãã§ã¼ã¹ï¼

ãªãã¸ããªã¯ãã¨ã³ãã£ãã£ã®æ°¸ç¶åãè¡ãå½¹å²ãæã¤ã¯ã©ã¹ã§ãããªãã¸ããªã®ã¤ã³ã¿ã¼ãã§ã¼ã¹ã¯ãã¡ã¤ã³å±¤ã«å®ç¾©ãã¾ããDart ã§ã¯ã`abstract class` ãç¨ãã¦ã¤ã³ã¿ã¼ãã§ã¼ã¹ãå®ç¾©ã§ãã¾ãã

```dart
abstract class BookRepository {
  Future<Book?> findById(String id);
  Future<List<Book>> findAll();
  Future<void> save(Book book);
}
```

### ã¦ã¼ã¹ã±ã¼ã¹

ã¦ã¼ã¹ã±ã¼ã¹ï¼ã¾ãã¯ã¢ããªã±ã¼ã·ã§ã³ï¼ã¯ãã¦ã¼ã¹ã±ã¼ã¹ã»ã·ããªãªã®å®ç¾ãè²¬åã¨ããã¬ã¤ã¤ã¼ã§ãã

ã¤ã³ã¿ã¼ãã§ã¼ã¹ã¨å®è£ã¯ã©ã¹ãåãã¦å®ç¾©ãã¾ãã

```dart
abstract class BookUseCase {
  Future<Book?> getBookById(String id);
  Future<List<Book>> getBooks();
  Future<Book> createBook({
    required String title,
  });
}
```

```dart
class BookUseCaseImpl implements BookUseCase {
  const BookUseCaseImpl(this._bookRepository);

  final BookRepository _bookRepository;

  @override
  Future<Book?> getBookById(String id) {
    return _bookRepository.findById(id);
  }

  // ...
}
```

### ã¤ã³ãã©

* ãªãã¸ããªï¼å®è£ï¼

ã¤ã³ãã©å±¤ã§ã¯ãç¹å®ã®ã¤ã³ãã©ãå¤é¨ãµã¼ãã¹ã«ä¾å­ããå®è£ãå®ç¾©ããã¬ã¤ã¤ã¼ã§ãããã¡ã¤ã³å±¤ã§å®ç¾©ãããªãã¸ããªã®ã¤ã³ã¿ã¼ãã§ã¼ã¹ã«å¯¾å¿ããå®è£ã¯ããã§è¡ãã¾ãã

```dart
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
```

### ãã¬ã¼ã³ãã¼ã·ã§ã³

* View

* View Model

## é¢é£è³æ

FlutterKaigi 2022 çºè¡¨è³æ : Flutter ã¢ããªã®å°æ¥ã®ã¤ã³ãã©ç§»è¡ã«åãã
ççµåãªã½ããã¦ã§ã¢ã»ã¢ã¼ã­ãã¯ãã£ï¼ã¤ãã³ãéå¬å¾ã«å¬éäºå®ã§ãï¼

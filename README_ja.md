# Flutter Starter - for your next project 🚀

[En](./README.md) | **日本語**

## このリポジトリについて

Flutter プロジェクトを **オニオン・アーキテクチャ** ではじめるスターター・キットとしてのサンプルコードです。

*全体的に Work in Progress であり、アプリとしてはまだ動作いたしません。順次アップデート予定です。*

## 技術スタック

* Flutter v3.3
* Riverpod
  * [riverpod](https://pub.dev/packages/riverpod)
  * [hooks_riverpod](https://pub.dev/packages/hooks_riverpod)
* Firestore
  * [cloud_firestore](https://pub.dev/packages/cloud_firestore)
* SQLite
  * [sqflite](https://pub.dev/packages/sqflite)
* ほか、おもなパッケージ
  * [freezed](https://pub.dev/packages/freezed)
  * [get_it](https://pub.dev/packages/get_it)

## オニオンアーキテクチャについて

## オニオン・アーキテクチャと Flutter/Dart

Flutter/Dart のプロジェクトにおいて、オニオン・アーキテクチャを採用することは可能です。Dart の持つオブジェクト指向言語としての性質を利用することで、

### ドメイン

ドメインモデルに関する知識を表現するのがドメイン層の責務です。

* エンティティ

エンティティを Dart で表現するために、[equatable](https://pub.dev/packages/equatable) を利用してオブジェクトの同一性を定義できます。

次の例では、`Book` クラスの `id` プロパティのみでオブジェクトの同一性を表現しています。

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

* バリュー・オブジェクト

*TBD*

* リポジトリ（インターフェース）

リポジトリは、エンティティの永続化を行う役割を持つクラスです。リポジトリのインターフェースはドメイン層に定義します。Dart では、`abstract class` を用いてインターフェースを定義できます。

```dart
abstract class BookRepository {
  Future<Book?> findById(String id);
  Future<List<Book>> findAll();
  Future<void> save(Book book);
}
```

### ユースケース

ユースケース（またはアプリケーション）は、ユースケース・シナリオの実現を責務とするレイヤーです。

インターフェースと実装クラスを分けて定義します。

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

### インフラ

* リポジトリ（実装）

インフラ層では、特定のインフラや外部サービスに依存する実装を定義するレイヤーです。ドメイン層で定義したリポジトリのインターフェースに対応する実装はここで行います。

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

### プレゼンテーション

* View

* View Model

## 関連資料

FlutterKaigi 2022 発表資料 : Flutter アプリの将来のインフラ移行に備える
疎結合なソフトウェア・アーキテクチャ（イベント開催後に公開予定です）

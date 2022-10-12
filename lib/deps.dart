import 'package:flutter_starter/infrastructure/firestore/book_repository.dart';
import 'package:flutter_starter/usecase/book_usecase.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  // for Firestore
  getIt.registerSingleton<BookUseCase>(
    BookUseCaseImpl(FirestoreBookRepository()),
  );

  // for SQLite
  // getIt.registerSingleton<BookUseCase>(
  //   BookUseCaseImpl(SQLiteBookRepository()),
  // );
}

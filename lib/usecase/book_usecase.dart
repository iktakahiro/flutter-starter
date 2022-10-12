import 'package:flutter_starter/domain/book.dart';
import 'package:flutter_starter/domain/book_repository.dart';

/// [BookUseCase] defines an interface of use-cases for [Book].
abstract class BookUseCase {
  Future<Book?> getBookById(String id);
  Future<List<Book>> getBooks();
  Future<Book> createBook({
    required String title,
  });
}

/// [BookUseCaseImpl] implements use-cases for [Book].
class BookUseCaseImpl implements BookUseCase {
  const BookUseCaseImpl(this._bookRepository);

  final BookRepository _bookRepository;

  @override
  Future<Book?> getBookById(String id) {
    return _bookRepository.findById(id);
  }

  @override
  Future<List<Book>> getBooks() {
    return _bookRepository.findAll();
  }

  @override
  Future<Book> createBook({
    required String title,
  }) async {
    final book = Book(
      id: '',
      title: title,
    );

    await _bookRepository.save(book);

    return book;
  }
}

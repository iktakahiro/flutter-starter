import 'package:flutter_starter/deps.dart';
import 'package:flutter_starter/domain/book.dart';
import 'package:flutter_starter/usecase/book_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';

part 'book_provider.freezed.dart';

final bookProvider = StateNotifierProvider<BookStateNotifier, BookState>((ref) {
  return BookStateNotifier(getIt<BookUseCase>());
});

@freezed
class BookState with _$BookState {
  const factory BookState({
    @Default(null) Book? book,
    @Default([]) List<Book> books,
  }) = _BookState;
}

class BookStateNotifier extends StateNotifier<BookState> {
  BookStateNotifier(this._bookUseCase) : super(const BookState());

  final BookUseCase _bookUseCase;

  Future<void> getBookById(String id) async {
    try {
      final book = await _bookUseCase.getBookById(id);
      state = state.copyWith(book: book);
    } catch (_) {
      // error handling
    }
  }

  Future<void> getBooks() async {
    try {
      final books = await _bookUseCase.getBooks();
      state = state.copyWith(books: books);
    } catch (_) {
      // error handling
    }
  }

  Future<void> createBook({
    required String title,
  }) async {
    try {
      await _bookUseCase.createBook(
        title: title,
      );
    } catch (_) {
      // error handling
    }
  }

  void initStates() {
    state = state.copyWith(
      book: null,
      books: [],
    );
  }
}

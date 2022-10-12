import 'package:flutter/material.dart';
import 'package:flutter_starter/domain/book.dart';
import 'package:flutter_starter/presentation/book/view/book_list_item.dart';

class BookList extends StatelessWidget {
  const BookList({
    required this.books,
    required this.onItemTap,
    super.key,
  }) : super();

  final List<Book> books;
  final Function(Book) onItemTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: books.length,
      itemBuilder: (context, index) {
        final book = books[index];
        return BookListItem(
          book: book,
          onTap: onItemTap,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 16,
        );
      },
    );
  }
}

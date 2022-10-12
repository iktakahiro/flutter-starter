import 'package:flutter/material.dart';
import 'package:flutter_starter/domain/book.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({
    required this.book,
    required this.onTap,
    super.key,
  }) : super();

  final Book book;
  final Function(Book) onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      onTap: () {
        onTap(book);
      },
    );
  }
}

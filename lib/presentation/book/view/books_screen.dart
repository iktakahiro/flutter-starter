import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_starter/presentation/book/view/book_list.dart';
import 'package:flutter_starter/presentation/book/view_model/book_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BooksScreen extends HookConsumerWidget {
  const BooksScreen({super.key}) : super();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) async {
          ref.read(bookProvider.notifier)
            ..initStates()
            ..getBooks();
        },
      );
      return null;
    }, const []);

    return BookList(
      books: ref.watch(bookProvider.select((state) => state.books)),
      onItemTap: (book) {
        log(book.title);
      },
    );
  }
}

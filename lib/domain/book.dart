import 'package:equatable/equatable.dart';

/// [Book] represents a book.
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

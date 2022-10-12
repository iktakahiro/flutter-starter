// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookState {
  Book? get book => throw _privateConstructorUsedError;
  List<Book> get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookStateCopyWith<BookState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookStateCopyWith<$Res> {
  factory $BookStateCopyWith(BookState value, $Res Function(BookState) then) =
      _$BookStateCopyWithImpl<$Res>;
  $Res call({Book? book, List<Book> books});
}

/// @nodoc
class _$BookStateCopyWithImpl<$Res> implements $BookStateCopyWith<$Res> {
  _$BookStateCopyWithImpl(this._value, this._then);

  final BookState _value;
  // ignore: unused_field
  final $Res Function(BookState) _then;

  @override
  $Res call({
    Object? book = freezed,
    Object? books = freezed,
  }) {
    return _then(_value.copyWith(
      book: book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book?,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
abstract class _$$_BookStateCopyWith<$Res> implements $BookStateCopyWith<$Res> {
  factory _$$_BookStateCopyWith(
          _$_BookState value, $Res Function(_$_BookState) then) =
      __$$_BookStateCopyWithImpl<$Res>;
  @override
  $Res call({Book? book, List<Book> books});
}

/// @nodoc
class __$$_BookStateCopyWithImpl<$Res> extends _$BookStateCopyWithImpl<$Res>
    implements _$$_BookStateCopyWith<$Res> {
  __$$_BookStateCopyWithImpl(
      _$_BookState _value, $Res Function(_$_BookState) _then)
      : super(_value, (v) => _then(v as _$_BookState));

  @override
  _$_BookState get _value => super._value as _$_BookState;

  @override
  $Res call({
    Object? book = freezed,
    Object? books = freezed,
  }) {
    return _then(_$_BookState(
      book: book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book?,
      books: books == freezed
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$_BookState implements _BookState {
  const _$_BookState({this.book = null, final List<Book> books = const []})
      : _books = books;

  @override
  @JsonKey()
  final Book? book;
  final List<Book> _books;
  @override
  @JsonKey()
  List<Book> get books {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString() {
    return 'BookState(book: $book, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookState &&
            const DeepCollectionEquality().equals(other.book, book) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(book),
      const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  _$$_BookStateCopyWith<_$_BookState> get copyWith =>
      __$$_BookStateCopyWithImpl<_$_BookState>(this, _$identity);
}

abstract class _BookState implements BookState {
  const factory _BookState({final Book? book, final List<Book> books}) =
      _$_BookState;

  @override
  Book? get book;
  @override
  List<Book> get books;
  @override
  @JsonKey(ignore: true)
  _$$_BookStateCopyWith<_$_BookState> get copyWith =>
      throw _privateConstructorUsedError;
}

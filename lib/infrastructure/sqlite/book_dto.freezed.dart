// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SQLiteBookDTO _$SQLiteBookDTOFromJson(Map<String, dynamic> json) {
  return _SQLiteBookDTO.fromJson(json);
}

/// @nodoc
mixin _$SQLiteBookDTO {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SQLiteBookDTOCopyWith<SQLiteBookDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SQLiteBookDTOCopyWith<$Res> {
  factory $SQLiteBookDTOCopyWith(
          SQLiteBookDTO value, $Res Function(SQLiteBookDTO) then) =
      _$SQLiteBookDTOCopyWithImpl<$Res>;
  $Res call({String id, String title});
}

/// @nodoc
class _$SQLiteBookDTOCopyWithImpl<$Res>
    implements $SQLiteBookDTOCopyWith<$Res> {
  _$SQLiteBookDTOCopyWithImpl(this._value, this._then);

  final SQLiteBookDTO _value;
  // ignore: unused_field
  final $Res Function(SQLiteBookDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SQLiteBookDTOCopyWith<$Res>
    implements $SQLiteBookDTOCopyWith<$Res> {
  factory _$$_SQLiteBookDTOCopyWith(
          _$_SQLiteBookDTO value, $Res Function(_$_SQLiteBookDTO) then) =
      __$$_SQLiteBookDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title});
}

/// @nodoc
class __$$_SQLiteBookDTOCopyWithImpl<$Res>
    extends _$SQLiteBookDTOCopyWithImpl<$Res>
    implements _$$_SQLiteBookDTOCopyWith<$Res> {
  __$$_SQLiteBookDTOCopyWithImpl(
      _$_SQLiteBookDTO _value, $Res Function(_$_SQLiteBookDTO) _then)
      : super(_value, (v) => _then(v as _$_SQLiteBookDTO));

  @override
  _$_SQLiteBookDTO get _value => super._value as _$_SQLiteBookDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_SQLiteBookDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SQLiteBookDTO extends _SQLiteBookDTO {
  const _$_SQLiteBookDTO({required this.id, required this.title}) : super._();

  factory _$_SQLiteBookDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SQLiteBookDTOFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'SQLiteBookDTO(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SQLiteBookDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_SQLiteBookDTOCopyWith<_$_SQLiteBookDTO> get copyWith =>
      __$$_SQLiteBookDTOCopyWithImpl<_$_SQLiteBookDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SQLiteBookDTOToJson(
      this,
    );
  }
}

abstract class _SQLiteBookDTO extends SQLiteBookDTO {
  const factory _SQLiteBookDTO(
      {required final String id,
      required final String title}) = _$_SQLiteBookDTO;
  const _SQLiteBookDTO._() : super._();

  factory _SQLiteBookDTO.fromJson(Map<String, dynamic> json) =
      _$_SQLiteBookDTO.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_SQLiteBookDTOCopyWith<_$_SQLiteBookDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

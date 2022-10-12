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

FirestoreBookDTO _$FirestoreBookDTOFromJson(Map<String, dynamic> json) {
  return _FirestoreBookDTO.fromJson(json);
}

/// @nodoc
mixin _$FirestoreBookDTO {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreBookDTOCopyWith<FirestoreBookDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreBookDTOCopyWith<$Res> {
  factory $FirestoreBookDTOCopyWith(
          FirestoreBookDTO value, $Res Function(FirestoreBookDTO) then) =
      _$FirestoreBookDTOCopyWithImpl<$Res>;
  $Res call({String id, String title});
}

/// @nodoc
class _$FirestoreBookDTOCopyWithImpl<$Res>
    implements $FirestoreBookDTOCopyWith<$Res> {
  _$FirestoreBookDTOCopyWithImpl(this._value, this._then);

  final FirestoreBookDTO _value;
  // ignore: unused_field
  final $Res Function(FirestoreBookDTO) _then;

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
abstract class _$$_FirestoreBookDTOCopyWith<$Res>
    implements $FirestoreBookDTOCopyWith<$Res> {
  factory _$$_FirestoreBookDTOCopyWith(
          _$_FirestoreBookDTO value, $Res Function(_$_FirestoreBookDTO) then) =
      __$$_FirestoreBookDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title});
}

/// @nodoc
class __$$_FirestoreBookDTOCopyWithImpl<$Res>
    extends _$FirestoreBookDTOCopyWithImpl<$Res>
    implements _$$_FirestoreBookDTOCopyWith<$Res> {
  __$$_FirestoreBookDTOCopyWithImpl(
      _$_FirestoreBookDTO _value, $Res Function(_$_FirestoreBookDTO) _then)
      : super(_value, (v) => _then(v as _$_FirestoreBookDTO));

  @override
  _$_FirestoreBookDTO get _value => super._value as _$_FirestoreBookDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_FirestoreBookDTO(
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
class _$_FirestoreBookDTO extends _FirestoreBookDTO {
  const _$_FirestoreBookDTO({required this.id, required this.title})
      : super._();

  factory _$_FirestoreBookDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FirestoreBookDTOFromJson(json);

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'FirestoreBookDTO(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirestoreBookDTO &&
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
  _$$_FirestoreBookDTOCopyWith<_$_FirestoreBookDTO> get copyWith =>
      __$$_FirestoreBookDTOCopyWithImpl<_$_FirestoreBookDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FirestoreBookDTOToJson(
      this,
    );
  }
}

abstract class _FirestoreBookDTO extends FirestoreBookDTO {
  const factory _FirestoreBookDTO(
      {required final String id,
      required final String title}) = _$_FirestoreBookDTO;
  const _FirestoreBookDTO._() : super._();

  factory _FirestoreBookDTO.fromJson(Map<String, dynamic> json) =
      _$_FirestoreBookDTO.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_FirestoreBookDTOCopyWith<_$_FirestoreBookDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

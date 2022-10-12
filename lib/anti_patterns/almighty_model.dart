import 'package:cloud_firestore/cloud_firestore.dart';

class AlmightyModel {
  AlmightyModel({
    required this.id,
    required this.title,
    required this.page,
    int readPage = 0,
  }) : _readPage = readPage;

  final String id;
  final String title;
  final int page;
  int _readPage;

  int get readPage => _readPage;

  set readPage(int p) {
    if (p <= page) {
      _readPage = p;
    }
  }

  bool get isAlreadyRead => page == readPage;

  factory AlmightyModel.fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    final json = {
      'id': snapshot.id,
      ...Map<String, dynamic>.from(snapshot.data()!),
    };
    return AlmightyModel.fromJson(json);
  }

  factory AlmightyModel.fromJson(Map<String, dynamic> json) {
    return AlmightyModel(
      id: json['id'],
      title: json['title'],
      page: json['page'],
      readPage: json['read_page'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
    };
  }
}

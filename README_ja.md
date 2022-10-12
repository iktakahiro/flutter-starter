# Flutter Starter - for your next project 🚀

[En](./README.md) | **日本語**

## このリポジトリについて

Flutter プロジェクトを **オニオン・アーキテクチャ** ではじめるスターター・キットとしてのサンプルコードです。

*全体的に Work in Progress であり、アプリとしてはまだ動作いたしません。順次アップデート予定です。*

## 技術スタック

* Flutter v3.3
* Riverpod
  * [riverpod](https://pub.dev/packages/riverpod)
  * [hooks_riverpod](https://pub.dev/packages/hooks_riverpod)
* Firestore
  * [cloud_firestore](https://pub.dev/packages/cloud_firestore)
* SQLite
  * [sqflite](https://pub.dev/packages/sqflite)
* ほか、おもなパッケージ
  * [freezed](https://pub.dev/packages/freezed)
  * [get_it](https://pub.dev/packages/get_it)

## オニオンアーキテクチャについて

## オニオン・アーキテクチャと Flutter/Dart

Flutter/Dart のプロジェクトにおいて、オニオン・アーキテクチャを採用することは可能です。Dart の持つオブジェクト指向言語としての性質を利用することで、

### ドメイン

* エンティティ

* バリュー・オブジェクト

* リポジトリ（インターフェース）

### ユースケース

* ユースケース

### インフラ

* リポジトリ（実装）

### プレゼンテーション

* View

* View Model

## 関連資料

FlutterKaigi 2022 発表資料 : Flutter アプリの将来のインフラ移行に備える
疎結合なソフトウェア・アーキテクチャ（イベント開催後に公開予定です）

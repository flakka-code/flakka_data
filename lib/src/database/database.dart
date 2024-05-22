import 'dart:typed_data';

import 'package:flakka_db/src/bolt_db/bucket.dart';
import 'package:fpdart/fpdart.dart';

import '../datastore/store.dart';

///
class Database {
  ///
  void mutate(
    void Function(DataWriter writer) mutation,
  ) =>
      throw UnimplementedError();

  ///
  void query(
    void Function(DataReader reader) projection,
  ) =>
      throw UnimplementedError();
}

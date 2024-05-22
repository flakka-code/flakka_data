import 'dart:typed_data';

import 'package:fpdart/fpdart.dart';

///
abstract interface class SubjectRef {
  ///
  SubjectRef ref(Key key) {
    throw UnimplementedError();
  }

}

///
class StoreRef<Value> extends ViewRef<Value> {

  ///
  void put(Key key, Uint8List value) {
    throw UnimplementedError();
  }
}

///
class ViewRef<Value> {
  ///
  ViewRef<ValueT> ref<ValueT>(Key key) {
    throw UnimplementedError();
  }

  ///
  Either<Error, Value> get(Key key) {
    return Right(throw UnimplementedError());
  }
}

//

///
class ScopeRefProvider {}

///
typedef Key = Uint8ClampedList;

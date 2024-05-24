import 'package:objectbox/objectbox.dart';

///
// abstract interface class BlobKind<BlobKindT extends BlobKind<BlobKindT>> {}

///
abstract interface class Blob<T extends Object> {
  ///
  int get id_;
}

///
abstract interface class BlobRef<T extends Object> implements Blob<BlobId> {
  ///
  late ToOne<Blob<T>> ref_;

  ///
  late ToOne<BlobRef<dynamic>> parent_;
// late ToOne<BlobRef>
}

///
extension type BlobId(int _id) implements int {}

///
extension type BlobKey(List<int> key) implements List<int> {}

///
interface class DataRef<T extends Object> {
  ///
  int id = 0;

  ///
  int uid = 1;
}

///
// interface class DataValue<T extends Object> extends DataBlob<T> {
//   ///
//   int uid = 0;
// }

// class DataKey {
//   IdUid
//   int id = 0;
//   int
// }
///
typedef DataKey = List<DataId>;

///
typedef DataId = int;

///
// typedef DataRef =

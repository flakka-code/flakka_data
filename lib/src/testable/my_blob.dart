import 'package:flakka_data/src/api/data/type/data_value.dart';
import 'package:objectbox/objectbox.dart';
import 'package:objectbox/src/relations/to_one.dart';

///
// extension type BlobInt(int _this) implements int, BlobKind<BlobInt> {}

///
@Entity()
class MyBlob implements Blob<int> {
  ///
  MyBlob({
    required this.content_,
    required this.id_,
  });

  @override
  final int content_;

  @override
  final int id_;
}

///
class MyBlobRef implements BlobRef<int> {
  MyBlobRef({
    required this.parent_,
    required this.ref_,
    required this.content_,
    this.id_ = 0,
  });

  @override
  final ToOne<BlobRef> parent_;

  @override
  final ToOne<Blob<int>> ref_;

  @override
  final BlobRef<BlobRef<int>> content_;

  @override
  final int id_;

  @override
  set parent_(ToOne<BlobRef> _parent_) {
    // TODO: implement parent_
  }

  @override
  set ref_(ToOne<Blob<int>> _ref_) {

  }
}

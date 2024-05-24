///
sealed class DataOp<DataObject> {}

///
sealed class DataWrite<DataObject> extends DataOp<DataObject> {}

///
sealed class DataRead<DataObject> extends DataOp<DataObject> {}

///
interface class DataPost<DataObject> extends DataWrite<DataObject> {
  /// the parent of this key
  int uid = 0;

  ///
  late DataObject content;
}

///
interface class DataGet<DataObject> extends DataRead<DataObject> {
  int uid = 0;
}

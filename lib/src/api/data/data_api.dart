// Ref
// Put, PutAll
// Resolve(Uri) -> List[int]
// Get(Key)
// Fetch(<Key>[])
// Put(
// Post

///
abstract interface class Data implements DataQuery, DataMutation {}

///
abstract interface class DataMutation {
  ///
  void putData();

  ///
  void putManyData();
}

///
abstract interface class DataQuery {
  ///
  Uri resolveUri(Uri uri);

  ///
  void getData();

  ///
  void getManyData();

  ///
  void getAllData();
}



///
class DataKeyCreate {}

///
typedef DataRef = (DataId, DataId);

///
typedef DataObject = Object;

///
typedef DataFuture<T> = Future<T>;

///
typedef DataStream<T> = Stream<T>;

///
class Functor<Input, Output> {}

///
class DataMaybe<DataObject> {}

///
class DataSome<DataObjectT extends DataObject> extends DataMaybe<DataObjectT> {}

///
class DataNone<DataObjectT extends DataObject> extends DataMaybe<DataObjectT> {}

typedef DataIOBatch = List<DataCommand<dynamic>>;

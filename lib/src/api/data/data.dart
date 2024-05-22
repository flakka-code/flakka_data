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

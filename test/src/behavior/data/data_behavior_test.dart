import 'package:test/test.dart';

void main() {
  group('.transact', () {
    late MyDataSchema schema;
    late Error Function() error;
    late DataRoot<MyDataSchema> _;
    given('schema = MyDataSchema()', () {
      schema = MyDataSchema();
    });
    and('error = Error.new', () {
      error = Error.new;
    });
    when('_ = DataSource(schema)', () {
      _ = DataRoot(schema);
    });
    then('expect(_.transact(MyError.new), toFail)', () {
      expect(() => _.transact(() => throw error()), throwsA(anything));
    });
  });
}

class MyDataSchema {}

const log = print;

class DataRoot<DataSchema> {
  DataRoot(MyDataSchema schema) {
    log(schema);
  }

  void transact(void Function() fn) => fn();
}

class TestContext {}

class TestSuite extends TestContext {}

void run(void Function() _) => group('', _);

const step = test;

void step_(String description) => given(description, () {});

const given = step;

const given_ = step_;

const when = step;

const when_ = step_;

const then = step;

const then_ = step_;

const and = step;

const and_ = step_;

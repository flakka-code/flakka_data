import 'package:test/test.dart';

void main() {
  test('', () {
    final data = Uri.dataFromString('hello');
    final base = Uri.parse('');
    
    final resolved = base.resolveUri(data);
    print(resolved);
  });
}

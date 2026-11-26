import 'package:flutter_test/flutter_test.dart';
import 'package:oyun_101_okey/oyun_101_okey.dart';

void main() {
  test('ana ekranda öğretici mod kartı (33 dil)', () {
    expect(okey101Config.extraModes.single.id, 'ogretici');
    expect(okey101Config.extraModes.single.title.length, 33);
  });
}

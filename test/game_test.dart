import 'package:flutter_test/flutter_test.dart';
import 'package:kart_motoru/kart_motoru.dart';
import 'package:oyun_101_okey/oyun_101_okey.dart';
import 'package:studio_core/core/level_plan.dart';

void main() {
  test('33 dilde ad ve anlatım', () {
    expect(okey101Config.title.length, 33);
    expect(okey101Config.tagline.length, 33);
    for (final s in okey101Config.tutorial) {
      expect(s.text.length, 33);
    }
  });

  test('bölümler kazanılabilir ve oyun sonuna kadar oynanır', () {
    final planner = LevelPlanner(gameId: okey101Id, optionalMechanics: const []);
    for (final lv in [1, 77, 1500, 33333, 49999]) {
      final gl = okey101Rules.build(planner.spec(lv));
      expect(gl.validation.ok, isTrue, reason: 'bölüm $lv');
      final end = TableGameRules.simulate(gl.puzzle, quick: true);
      expect(end.over, isTrue, reason: 'bölüm $lv');
    }
  });
}

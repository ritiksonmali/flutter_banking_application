import 'package:banking_application/calculation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("test a function", () {
    Calculation cal = Calculation();

    int result = cal.add(5, 6);
    expect(result, 11);
  });
}

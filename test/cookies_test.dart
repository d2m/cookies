import 'package:unittest/unittest.dart';
import 'package:cookies/cookies.dart';

void main() {
  test("createCookie() creates a browser cookie", () {
    createCookie('a', '1', 1);
    var a_ = readCookie('a');
    expect(a_, equals('1'));
  });
  test("readCookie() returns the value of a named cookie or null", () {
    var a_ = readCookie('a');
    expect(a_, equals('1'));
    var b_ = readCookie('b');
    expect(b_, equals(null));
  });
  test("eraseCookie() removes a cookie", () {
    eraseCookie('a');
    var a_ = readCookie('a');
    expect(a_, equals(null));
  });
}

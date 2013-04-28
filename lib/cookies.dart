/**
 * document.cookie library (client side)
 *
 * ported from
 * http://www.quirksmode.org/js/cookies.html
 *
 */

library cookies;

import 'dart:html';

/**
 *  Create client side cookie
 */
void createCookie(String name, String value, int days) {
  String expires;
  if (days != null)  {
    DateTime now = new DateTime.now();
    DateTime date = now.add(new Duration(days: days));
    expires = '; expires=' + date.toString();
  } else {
    expires = '';
  }
  document.cookie = name + '=' + value + expires + '; path=/';
}

/**
 * Read cookie values,
 * returns null when the cookie does not exist
 */
String readCookie(String name) {
  String nameEQ = name + '=';
  List<String> ca = document.cookie.split(';');
  for (int i = 0; i < ca.length; i++) {
    String c = ca[i];
    c = c.trim();
    if (c.indexOf(nameEQ) == 0) {
      return c.substring(nameEQ.length);
    }
  }
  return null;
}

/**
 * Remove cookie
 */
void eraseCookie(String name) {
  createCookie(name, '', null);
}

##cookies

A client-side cookie library.

ported from http://www.quirksmode.org/js/cookies.html

*Functions*

void eraseCookie(String name)
: Remove cookie

String readCookie(String name)
: Read cookie values, returns null when the cookie does not exist

void createCookie(String name, String value, int days)
: Create client side cookie

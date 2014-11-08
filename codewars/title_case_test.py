import unittest
def title_case(title, minor_words=''):
    title = title.capitalize().split()
    minor_words = minor_words.lower().split()
    return ' '.join([word if word in minor_words else word.capitalize() for word in title])
t = unittest.TestCase()
t.assertEqual("Foonity bar bar Foo", title_case("foonity Bar Bar FOO", 'bar'))

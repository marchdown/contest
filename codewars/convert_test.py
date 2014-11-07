import unittest
from convert import *
dec = "0123456789"
bin = "01"
oct = "01234567"
hex = "0123456789abcdef"
alpha = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
class ConvertTest(unittest.TestCase):
	def test_dec2oct(self):
		self.assertEquals(
			convert("15", dec, oct),
			"17")

if __name__ == '__main__':
	unittest.main()	

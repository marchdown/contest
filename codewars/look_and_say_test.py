import unittest
from look_and_say import *
class look_and_say_test(unittest.TestCase):
	def test_first_iteration(self):
		self.assertEqual('11',
			make_next_look_and_say_number('1'))
	def test_third_iteration(self):
		self.assertEqual('1211',
			make_next_look_and_say_number('21'))		

	def test_list(self):
		self.assertEqual(look_and_say(maxlen=10),
		 ['1', '11', '21', '1211', '111221', '312211', '13112221', '1113213211'])

	def test_zero(self):
		self.assertEqual(look_and_say(maxlen=0),
		 [])
	def test_one(self):
		self.assertEqual(look_and_say(maxlen=1),
		 ['1'])	
	def test_100500(self):
		self.assertEqual(len(look_and_say(maxlen=100500)),
		 41)				 	


if __name__ == '__main__':
	unittest.main()

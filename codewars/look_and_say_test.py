import unittest
from look_and_say import *
class Test_make_next_look_and_say_number(unittest.TestCase):
	def runTest(self):
		self.assertEqual('11',
			make_next_look_and_say_number('1'))

		self.assertEqual('1211',
			make_next_look_and_say_number('21'))		

class Test_look_and_say(unittest.TestCase):
	def runTest(self):
		self.assertEqual(look_and_say(maxlen=10),
		 ['1', '11', '21', '1211', '111221', '312211', '13112221', '1113213211'])


		self.assertEqual(look_and_say(maxlen=0),
		 [])

		self.assertEqual(look_and_say(maxlen=1),
		 ['1'])	

		self.assertEqual(len(look_and_say(maxlen=100500)),
		 41)				 
def suite():
	suite = unittest.TestSuite()
	suite.addTest(Test_look_and_say())
	suite.addTest(Test_make_next_look_and_say_number())
	return suite

if __name__ == '__main__':
	# suite = suite()
	# runner = unittest.TextTestRunner()
	# runner.run(suite)
	unittest.main()

# http://blogs.wrox.com/article/python-test-cases-and-test-suites/


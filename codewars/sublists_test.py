from sublists import power
import unittest 
class test(unittest.TestCase):
	def runTest(self):
		self.assertEqual(power([]), [[]])
		self.assertEqual(power([1]), [[],[1]])
		# assertEqual(power([1, 2]), [[],[1]])

if __name__ == '__main__':
	unittest.main()
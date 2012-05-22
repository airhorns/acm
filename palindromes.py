import sys, math
data = sys.stdin.readlines()

def lowestBase(num):
	for x in [2,3,4,5,6,7,8,9,10]:
		num_arr = convertToBase(num, x)
    	if isPalindrome(num_arr):
			return x

def convertToBase(number, base):
	new_number = []
	while number != 0:
		x = number % base
		new_number = new_number.append(x)
		number = number / base
	print new_number
	return new_number.reverse()

def isPalindrome(arr):
	return arr == arr.reverse()
	
for num in data[1:-1]:
	print lowestBase(int(float(num)))

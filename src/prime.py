# -*- coding: utf-8 -*

import sys     
n = sys.argv
if len(n) < 2:
        print("自然数を入力してください")
        n = sys.stdin.readline()
else:
        n = n[1]

try:
    int(n)
except ValueError:
    print("2より大きい数値を入力してください")
    exit()

n = int(n)
if n <= 2:
    print("2より大きい数値を入力してください")
    exit()

i = 2
while i <= n:
        if (n % i) == 0:
	        n = n / i
	        print(i)
	else:
	        i += 1
	if n == i:
	        print(i)
		break
	
        





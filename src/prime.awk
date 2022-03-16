BEGIN{
	print "自然数を入力してください";
}

{
	system("reset");
	n = int($1);
	print "> " n;
	if(NR <= 0 || n <= 2){
		print "2より大きい数値を入力してください";
		exit 0;
	}
}

{
	for(i = 2; i < n;){
		if((n % i) == 0){
			n = n / i;
			print i;
		}else{
			i++;
		}
		if(n == i){
			print i;
			exit 0;
		}
	}
}

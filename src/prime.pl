$n = $ARGV[0];
unless(defined($n)){
	print "自然数を入力してください\n";
	$n = <STDIN>;
	chomp($n);
}	

$n = int($n);
if($n <= 2){
	print "2より大きい数値を入力してください\n";
	exit;
}

for($i = 2; $i < $n;){
	if(($n % $i) == 0){
		$n = $n / $i;
		print $i."\n";
	}else{
		$i++;
	}
	if($n == $i){
		print $i."\n";
		last;
	}
}

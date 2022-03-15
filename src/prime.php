<?php
$n = intval($_SERVER['argv'][1]);
if(!isset($_SERVER['argv'][1])){
	printf("自然数を入力してください\n");
	$n = intVal(fgets(STDIN));
}

if($n <= 2){
	printf("引数は2より大きい数値にしてください\n");
	exit();
}

for($i = 2; $i < $n;){
	if(($n % $i) === 0){
		$n = $n / $i;
		printf($i."\n");
	}else{
		$i++;
	}
	if($n === $i){
		printf($i."\n");
		break;
	}
};
?>

n=${1};
if [ $n = "" ]; then
	echo "自然数を入力してください";
	while read line;
	do
		n=$line;
		break;
	done
fi

if [ $n -le 2 ]; then 
	echo "2より大きい数字を第一パラメーターに入力してください";
	exit;
fi

i=2;
while [ $n -gt $i ];
do
	if [ $((n % i)) -eq 0 ]; then
		n=$((n / i));
		echo $i;
	else
		i=$((i + 1));
	fi
	if [ $n -eq $i ]; then
		echo $i;	
		break;
	fi
done


if [ ${1} -le 2 ]; then 
	echo "2より大きい数字を第一パラメーターに入力してください";
	exit;
fi

n=${1};
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


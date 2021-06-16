#include <stdio.h>
#include <stdlib.h>
int main(){
	int n;
	printf("自然数を入力してください\n");
	scanf("%d", &n);
	if(n <= 2){
		printf("2より大きい自然数を入力してください\n");
		exit(0);
	}

	for(int i = 2; i < n;){
		if((n % i) == 0){
			n = n / i;
			printf("%d\n", i);
		}else{
			i++;
		}
		if(n == i){
			printf("%d\n", i);
			break;
		}
	}
	return 0;
}


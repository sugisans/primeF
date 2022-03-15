#include <stdio.h>
#include <stdlib.h>
int main(int argc, char *argv[]){
	unsigned long n;
	if(argc < 2){
		printf("自然数を入力してください\n");
		scanf("%lu", &n);
	}else{
		n = (unsigned long) atoi(argv[1]);
	}
	if(n <= 2){
		printf("2より大きい自然数を入力してください\n");
		return -1;
	}
	for(unsigned long i = 2; i < n;){
		if((n % i) == 0){
			n = n / i;
			printf("%lu\n", i);
		}else{
			i++;
		}
		if(n == i){
			printf("%lu\n", i);
			break;
		}
	}
	return 0;
}


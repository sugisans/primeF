class math{
	public static void main(String[] args){
		int n = Integer.parseInt(args[0]);
		if(n <= 2){
			System.out.println("引数は2より大きい自然数にしてください");
			System.exit(0);
		}

		for(int i = 2; i < n;){
			if((n % i) == 0){
				n = n / i;
				System.out.println(i);
			}else{
				i++;
			}
			if(n == i){
				System.out.println(i);
				break;
			}
		}
	}
}

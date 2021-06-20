import java.util.Scanner;
class prime{
	public static void main(String[] args){
		long n;
		try{
			n = Long.parseLong(args[0]);
		}
		catch(ArrayIndexOutOfBoundsException err){
			System.out.println("自然数を入力してください");
			Scanner scan = new Scanner(System.in);
			String str = scan.nextLine();
			n = Long.parseLong(str);
		}
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

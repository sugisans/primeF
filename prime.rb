n = ARGV[0].to_i

if n == 0 || n == nil then
        p "自然数を入力してください\n"
        n = $stdin.gets.to_i
end

if n <= 2 then
        p "2より大きい数値を入力してください\n"
        exit
end

i = 2
while i <= n do
        if (n % i) == 0 then
	        n = n / i
	        puts i
	else
	        i += 1
        end
	if n == i then
	        puts i
		break
        end
end
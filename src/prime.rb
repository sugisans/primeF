n = ARGV[0]
if n == nil then
        puts "自然数を入力してください\n"
        n = $stdin.gets
end

n = n.to_i
if n <= 2 then
        puts "2より大きい数値を入力してください\n"
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

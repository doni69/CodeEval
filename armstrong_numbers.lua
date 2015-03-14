for line in io.lines(arg[1]) do
	n=#line
	sum=0
	for digit = 1,n do
		sum=sum+tonumber(line:sub(digit,digit))^n
	end
	if sum==tonumber(line) then
		print("True")
	else
		print("False")
	end
end

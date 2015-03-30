for line in io.lines(arg[1]) do
	age=tonumber(line)
	if age>100 or age<0 then print("This program is for humans")
	elseif age>=66 then print("The Golden Years")
	elseif age>=23 then print("Working for the man")
	elseif age>=19 then print("College")
	elseif age>=15 then print("High school")
	elseif age>=12 then print("Middle school")
	elseif age>=5 then print("Elementary school")
	elseif age>=3 then print("Preschool Maniac")
	elseif age>=0 then print("Still in Mama's arms")
	end
end

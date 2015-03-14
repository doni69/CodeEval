for line in io.lines(arg[1]) do
	morse={['.-']='A',['-...']='B',['-.-.']='C',['-..']='D',['.']='E',['..-.']='F',['--.']='G',['....']='H',['..']='I',['.---']='J',['-.-']='K',['.-..']='L',['--']='M',['-.']='N',['---']='O',['.--.']='P',['--.-']='Q',['.-.']='R',['...']='S',['-']='T',['..-']='U',['...-']='V',['.--']='W',['-..-']='X',['-.--']='Y',['--..']='Z',['-----']='0',['.----']='1',['..---']='2',['...--']='3',['....-']='4','[.....]'='5',['-....']='6',['--...']='7',['---..']='8',['----.']='9'}
	words={}
	while line:find("  ") do
		s,e=line:find("  ")
		table.insert(words,line:sub(1,s-1))
		line=line:sub(e+1,#line)
	end
	table.insert(words,line)
	str=""
	for k,v in ipairs(words) do
		word=""
		for char in string.gmatch(v,"[.-]+") do
			word=word..morse[char]
		end
		str=str..' '..word
	end
	str=str:sub(2,#str)
	print(str)
end


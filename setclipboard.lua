local x = {}
local random = Random.new()
local letters = {'a','b','c','d','e','f','g','h','i','j','k4','l','m','n','o','p4','q','r','s','t','u','v4','w','x','y','z','gej0h','hrhw1','ewh2','gew3','ffs4','gh5','w6','f7r','ff8','e9r','h','br'}
function getRandomLetter()
	return letters[random:NextInteger(1,#letters)]
end
function x:set(self)
  setclipboard(self)
end
function x:getrandomkeylength(length, includeCapitals )
	local length = length or 10
	local str = ''
	for i=1,length do
		local randomLetter = getRandomLetter()
		if includeCapitals and random:NextNumber() > .5 then
			randomLetter = string.upper(randomLetter)
		end
		str = str .. randomLetter
	end
	return str
end
return x

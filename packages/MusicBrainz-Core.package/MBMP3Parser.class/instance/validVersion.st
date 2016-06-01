parsing
validVersion
	| response |
	response := 3 = self stream next asciiValue.
	self stream next.
	^ response
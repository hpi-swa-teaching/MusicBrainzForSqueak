parsing
validVersion
	| response |
	self halt.
	response := 3 = self stream next.
	self stream next.
	^ response
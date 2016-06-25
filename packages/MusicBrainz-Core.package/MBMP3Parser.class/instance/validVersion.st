parsing
validVersion
	| response |
	response := (3 = self stream next).
	self stream next.
	^ response
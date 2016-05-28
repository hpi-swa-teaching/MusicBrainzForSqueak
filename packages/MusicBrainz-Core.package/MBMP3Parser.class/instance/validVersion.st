parsing
validVersion
	"comment stating purpose of message"

	| response |
	
	response := (3 = (self stream next) asciiValue).
	
	self stream next.
	
	^response
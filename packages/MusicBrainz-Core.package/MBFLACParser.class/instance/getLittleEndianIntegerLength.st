parsing
getLittleEndianIntegerLength
	| length |
	length := self stream next.
	length := length + (self stream next << 8).
	length := length + (self stream next << 16).
	length := length + (self stream next << 24).
	^ length
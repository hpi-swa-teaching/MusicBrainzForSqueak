parsing
getFrameSize
	| size |
	size := ((self stream next) bitShift: 24) asInteger.
	size := size + (self stream next bitShift: 16 asInteger).
	size := size + (self stream next bitShift: 8 asInteger).
	size := size + (self stream next asInteger).
	^ size
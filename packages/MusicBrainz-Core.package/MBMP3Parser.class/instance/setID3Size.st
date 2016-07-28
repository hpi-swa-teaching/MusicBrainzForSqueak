parsing
setID3Size
	| size |
	size := self stream next bitShift: 21 asInteger.
	size := size + (self stream next bitShift: 14 asInteger).
	size := size + (self stream next bitShift: 7 asInteger).
	size := size + self stream next asInteger.
	self id3size: size
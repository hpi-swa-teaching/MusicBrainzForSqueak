parsing
setID3Size
	"comment stating purpose of message"

	| size |
	
	size := 0.
	
	self stream binary.
	
	#(21 14 7 0) do: [:each |
		size := size + (self stream next << each)].
	
	self stream ascii.
	self id3size: size.
parsing
setID3Size
	| size |
	size := 0.
	#(21 14 7 0 )
		do: [:each | size := size + (self stream next << each)].
	self id3size: size